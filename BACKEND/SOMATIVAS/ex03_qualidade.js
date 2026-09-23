// QUESTÃO 03
// Uma peça será aprovada no controle de qualidade quando seu peso estiver entre 95 g e 105 g
const entrada = require('readline-sync');

const peso = entrada.questionFloat("Qual o peso da peca? ");

if (peso >= 95 && peso <= 105) {
    console.log("Peso informado:", peso + " g");
    console.log("PECA APROVADA");
} else {
    console.log("Peso informado:", peso + " g");
    console.log("PECA REPROVADA");
}
