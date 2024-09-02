let salM = parseFloat(prompt("Digite o saldo medio: "));
let credito;

if (salM >= 0 && salM < 500) {
    credito = 0;
} else if (salM <= 1000) {
    credito = salM * 0.30;
}else if (salM <= 3000) {
    credito = salM * 0.40
}else {
    credito = salM * 0.50
}

let creditoJ = credito + (credito * 0.02)

document.write(`Saldo medio: ${salM.toFixed(2)} <br>`);
document.write(`Credito: ${credito} <br>`)
document.write(`Valor do crédito concedido com juros: ${creditoJ.toFixed(2)}`);