// 1. Importar biblioteca para ler dados do terminal
const entrada = require('readline-sync');

console.log("--------------------------");
console.log("    CALCULADORA DE IMC"    );
console.log("--------------------------\n");

// 2. Coleta de dados (Entrada)
const nome = entrada.question("Qual o seu nome?");
const peso = entrada.questionFloat("Digite seu peso (ex:70.5");
const altura = entrada.questionFloat("Digite sua altura (ex:1.75");

// 3. Calculo do IMC (Processamento )
// A formula e: peso dividido por (altura vezes altura)
const imc = peso / (altura*altura);

// 4. Exibicao do resultado (Saida)
console.log("\n -----------------------");
console.log(`Ola, ${nome} |`);
console.log(`Seu peso: ${peso} kg`);
console.log(`Sua altura: ${altura} m`);

// O .toFixed(2) faz aparecer apenas 2 numeros apos o ponto 
console.log(`Seu IMC calculado e: ${imc.toFixed(2)}`);
console.log("---------------------------")
