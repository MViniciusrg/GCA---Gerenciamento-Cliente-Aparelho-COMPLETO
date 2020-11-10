
var modeloSelect = document.querySelector("#modelos");

var marcaSelect = document.querySelector("#marcasSelect"), marcaN = 1;

var modeloSelectArray = [];

var modeloAtual = [];

var finalizar = document.querySelector("#submitBtn")
finalizar.style.backgroundColor = "#707070"
finalizar.disabled = true;

var nome = document.querySelector("#nameId");
var cpf = document.querySelector("#cpfId");
var numero = document.querySelector("#numberId")
var descr = document.querySelector("#description")






function verify() {
    if(nome.value.length == 0 || cpf.value.length < 11 || numero.value.length < 11 || descr.value.length == 0){
        finalizar.style.backgroundColor = "#707070"
        finalizar
        finalizar.disabled = true;
    }
    else{
        finalizar.disabled = false;
        finalizar.style.backgroundColor = "#0e0e0e"
    }
}

onkeypress = verify;
onmousemove = verify;



change()

function change() {
    modeloAtual = []
    marcaN = marcaSelect.value;

    
    for(i = 0; i < modeloSelectArray.length; i++){
        if(modeloSelectArray[i].value == marcaN){
            modeloAtual.push(modeloSelectArray[i])
        }

    }
    

    
    if(modeloSelect.length > 0){
        do{
            modeloSelectArray.push(modeloSelect.lastElementChild)
            modeloSelect.lastElementChild.remove();
        }while(modeloSelect.length > 0)
    } 
    
    

    for(i = 0; i < modeloAtual.length; i++){
        let option = document.createElement("option");
        option.text = modeloAtual[i].text;
        option.value = modeloAtual[i].innerText;

        modeloSelect.appendChild(option);
    }
    
}

marcaSelect.addEventListener('change', change())
