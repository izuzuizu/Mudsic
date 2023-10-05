let pass1 = document.getElementById('contrasenia1')
let pass2 = document.getElementById('contrasenia2')
let sub = document.getElementById('sub')
let name = document.getElementById('nombre')
let mail = document.getElementById('correo')
let date = document.getElementById('nacimiento')
let form = document.getElementById('form')
let img = document.getElementById('imagen');
let input = document.getElementById('imgSubida');

input.addEventListener('change', function() {// al cumplirse esto aparece la imagen en el boton de cambiar imagen
    let file = this.files[0];
    let reader = new FileReader();

    reader.onloadend = function() {
        img.src = reader.result;
    }

    if (file) {
        reader.readAsDataURL(file);
    } else {
        img.src = "";
    }
});

sub.disabled = true
form.addEventListener('change', async function () {
    if (pass1.value == pass2.value && name.value!='' && mail.value!='' && date.value!='') {
        sub.disabled = false
    }else{
        sub.disabled = true
    }
})