
const entrada = require('readline-sync');

const temp = entrada.questionFloat("Digite a temperatura: ");

if (temp <= 60) {
    console.log("Temperatura:", temp + " °C");
    console.log("Classificação: NORMAL");
} else if (temp <= 80) {
    console.log("Temperatura:", temp + " °C");
    console.log("Classificação: ATENÇÃO");
} else {
    console.log("Temperatura:", temp + " °C");
    console.log("Classificação: CRÍTICA");
}
