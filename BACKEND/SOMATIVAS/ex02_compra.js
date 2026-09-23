//QUESTÃO 02
// Cálculo do custo
const entrada = require('readline-sync');

console.log()

const Material = entrada.question("Nome do material");
const Quantidade = entrada.questionFloat("Quantidade que comprou");
const valorUnitario = entrada.questionFloat("Valor do material");

const valorCompra = Quantidade * valorUnitario;

console.log("=== AQUI ESTÁ UM RESUMO DA COMPRA ===");
console.log(`Produto: ${Material}`);
console.log(`Quantia: ${Quantidade}`);
console.log(`Preço: R$ ${valorCompra.toFixed(2)}`);