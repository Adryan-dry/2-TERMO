// QUESTÃO 05
// Produção acumulada do ciclo até 10
const entrada = require('readline-sync');

const pecasPorCiclo = entrada.questionInt("Quantas pecas a maquina produz por ciclo? ");

let producaoAcumulada = 0;

for (let ciclo = 1; ciclo <= 10; ciclo++) {
    producaoAcumulada = producaoAcumulada + pecasPorCiclo;

    console.log("Ciclo:", ciclo, "- Produção acumulada:", producaoAcumulada);
}

// NESTE SEGUNDO CÓDIGO NÃO SEGUI ESTRITAMENTE O QUE O SENHOR PEDIR, EU SEGUI A PARTE EM QUE DIZ "NÃO ESCREVER AS DEZ LINHAS AUTOMATICAMENTE"

const entrada = require('readline-sync');

const pecasPorCiclo = entrada.questionInt("Quantas pecas a maquina produz por ciclo? ");

let producaoAcumulada = 0;

for (let ciclo = 1; ciclo <= 10; ciclo++) {
    producaoAcumulada = producaoAcumulada + pecasPorCiclo;
}

console.log("Produção acumulada após 10 ciclos:", producaoAcumulada);
