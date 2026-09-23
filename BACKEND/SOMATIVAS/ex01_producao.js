// QUESTÃO 01
// Uma linha de produção fabrica uma determinada quantidade de peças por hora. Crie um programa que calcule quantas peças serão produzidas em um turno.

const entrada = require('readline-sync');

const pecaspHora = entrada.question ("Quantas pecas foram produzidas?");
const horasTurno = entrada.question("Quantas horas durou o turno");
const producaoTotal = pecaspHora * horasTurno;

console.log(`Produção por hora: ${pecaspHora} peças`);
console.log(`Duração do turno: ${horasTurno} horas`);
console.log(`Produção total do turno: ${producaoTotal} peças`);
