document.getElementById("seccion1").addEventListener("click", ()=>{    
    document.getElementById("contSeccion1").style.display = "block";
    document.getElementById("contSeccion2").style.display = "none";
    document.getElementById("contSeccion3").style.display = "none";
    document.getElementById("contSeccion4").style.display = "none";
});

document.getElementById("seccion2").addEventListener("click", ()=>{    
    document.getElementById("contSeccion1").style.display = "none";
    document.getElementById("contSeccion2").style.display = "block";
    document.getElementById("contSeccion3").style.display = "none";
    document.getElementById("contSeccion4").style.display = "none";
});

document.getElementById("seccion3").addEventListener("click", ()=>{    
    document.getElementById("contSeccion1").style.display = "none";
    document.getElementById("contSeccion2").style.display = "none";
    document.getElementById("contSeccion3").style.display = "block";
    document.getElementById("contSeccion4").style.display = "none";
});

document.getElementById("seccion4").addEventListener("click", ()=>{    
    document.getElementById("contSeccion1").style.display = "none";
    document.getElementById("contSeccion2").style.display = "none";
    document.getElementById("contSeccion3").style.display = "none";
    document.getElementById("contSeccion4").style.display = "block";
});
