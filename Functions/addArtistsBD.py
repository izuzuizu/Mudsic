import mysql.connector
from dropbox.exceptions import AuthError
from mutagen.id3 import ID3
from io import BytesIO
from mutagen.wave import WAVE
from urllib.parse import urlparse
import os
from tinytag import TinyTag
from datetime import time, timedelta
import spotipy
from spotipy.oauth2 import SpotifyClientCredentials
import requests
import time

def convertir_milisegundos_a_formato(milisegundos):
    segundos_totales = int(milisegundos / 1000)
    minutos = int(segundos_totales / 60)
    segundos = segundos_totales % 60
    return f"{minutos:02d}:{segundos:02d}"

def convertir_minutos_a_formato(minutos):
    minutos_enteros = int(minutos)
    segundos = int((minutos - minutos_enteros) * 60)
    return f"{minutos_enteros:02d}:{segundos:02d}"

# Conexión a la base de datos
db = mysql.connector.connect(
    # host="db4free.net",
    # user="izuagus",
    # password="Paraphonico",
    # database="mudsic"
    host="localhost",
    user="root",
    password="",
    database="mudsic2"
    # host="sql10.freemysqlhosting.net",
    # user="sql10669780",
    # password="CYyx3CuqKd",
    # database="sql10669780"
)

# cursor = db.cursor()
cursor = db.cursor(buffered=True)

# Configura las credenciales de la API de Spotify
client_id = 'eed31a43318f478ba48917070c9c3b37'
client_secret = '3337a7d23626403399901e0f1e487a98'
client_credentials_manager = SpotifyClientCredentials(client_id, client_secret)
sp = spotipy.Spotify(client_credentials_manager=client_credentials_manager, requests_timeout=20)

# # Verifica si el artista ya existe en la base de datos
# check_query = "SELECT COUNT(*) FROM artistas WHERE artista_idSpotify = %s"
# cursor.execute(check_query, ())
# artist_exists = cursor.fetchone()[0] > 0

while True:
    # Realiza una búsqueda en la API de Spotify
    query = 'dillom'
    results = sp.search(query, limit=50, type='artist')
    for artist in results['artists']['items']:
        artist_id = artist['id']
        nArtista = artist['name']
        if 'images' in artist and len(artist['images']) > 0:
            imgArtista = artist['images'][0]['url']
        else:
            imgArtista = 'None'  # o cualquier valor predeterminado
        popularity = artist['popularity']
        followers = artist['followers']['total']
        genres = artist['genres']

        # Verifica si el artista ya existe en la base de datos
        check_query = "SELECT COUNT(*) FROM artistas WHERE artista_idSpotify = %s"
        cursor.execute(check_query, (artist_id,))
        artist_exists = cursor.fetchone()[0] > 0

        # Si el artista no existe, inserta el nuevo artista en la base de datos
        if not artist_exists:
            insert_query = f"INSERT INTO artistas (nombre, artista_idSpotify, imgArtista, popularidad, seguidores) VALUES (%s, %s, %s, %s, %s)"
            cursor.execute(insert_query, (nArtista, artist_id, imgArtista, popularity, followers,))
            db.commit() # Guardar los cambios en la base de datos

            query = "SELECT COUNT(*) FROM artistas"
            cursor.execute(query)

            # Obtener el resultado
            artist_count = cursor.fetchone()[0]

            for genre in genres:
                select_query2 = f"SELECT * FROM generos WHERE nombre=%s"
                cursor.execute(select_query2, (genre,))
                result2 = cursor.fetchone()
                # print(result2['nombre'])
                if result2 is None:
                    insert_query3 = f"INSERT INTO generos (nombre) VALUES (%s)"
                    cursor.execute(insert_query3, (genre,))
                    db.commit() # Guardar los cambios en la base de datos
                    genre_id = cursor.lastrowid
                else:
                    print(result2[0])
                    genre_id = result2[0]

                insert_querya = f"INSERT INTO artistas_generos (artista_id, generos_id) VALUES (%s,%s)"
                cursor.execute(insert_querya, (artist_count, genre_id,))
                db.commit()
            albums = sp.artist_albums(artist_id, limit=50)    
            for idx, album in enumerate(albums['items']):
                # Obtiene las canciones del álbum
                print(f'{idx+1}. {album["name"]}')
                duracion = convertir_minutos_a_formato(album["total_tracks"]*3.20)
                imgAlbum = album["images"][0]["url"]
                insert_query4 = f"INSERT INTO albumes (nombre, duracion, album_idSpotify, imgAlbum, type, canciones, estreno, fecha_estreno) VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
                cursor.execute(insert_query4, (album["name"], duracion, album["id"], imgAlbum, album["type"], album["total_tracks"], album["release_date_precision"], album["release_date"],))
                db.commit() # Guardar los cambios en la base de datos
                # Obtiene las canciones del álbum    
                query = "SELECT COUNT(*) FROM albumes"
                cursor.execute(query)

                # Obtener el resultado
                album_count = cursor.fetchone()[0]
                insert_queryi = f"INSERT INTO albumes_artistas (albumes_id, artistas_id) VALUES (%s,%s)"
                cursor.execute(insert_queryi, (album_count, artist_count,))
                db.commit() # Guardar los cambios en la base de datos
                tracks = sp.album_tracks(album['id'], limit=50)
                for track in tracks['items']:
                    # print(f'{track["name"]}: {track["preview_url"]}')
                    duracion = track['duration_ms']
                    duracion = convertir_milisegundos_a_formato(duracion)
                    if track["preview_url"] is None:
                        url = 'nulo'
                        # print(f'Deezer {track["name"]}: {url}')
                        insert_query4 = f"INSERT INTO canciones (nombre, duracion, artista, album, previewUrl, idSpotify) VALUES (%s,%s,%s,%s,%s,%s)"
                        cursor.execute(insert_query4, (track["name"], duracion, artist_id, album["id"], url, track["id"],))
                        db.commit() # Guardar los cambios en la base de datos
                    else:
                        insert_query5 = f"INSERT INTO canciones (nombre, duracion, artista, album, previewUrl, idSpotify) VALUES (%s,%s,%s,%s,%s,%s)"
                        cursor.execute(insert_query5, (track["name"], duracion, artist_id, album["id"], track["preview_url"],track["id"],))
                        db.commit() 
    time.sleep(20)  # Pausa la ejecución durante 20 segundos
    db.close()

# idSpotify