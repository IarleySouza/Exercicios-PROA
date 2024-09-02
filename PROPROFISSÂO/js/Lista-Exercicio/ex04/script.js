let A = parseFloat(prompt('Digite o valor de A:'))
let B = parseFloat(prompt('Digite o valor de B:'))
let C = parseFloat(prompt('Digite o valor de C:'))

let maior, medio, menor;

if (A >= B && A >= C) {
    maior = A;
    if (B >= C) {
        medio = B;
        menor = C;
    } else {
        medio = C;
        menor = B;
    }
} else if (B >= A && B >= C) {
    maior = B;
    if (A >= C) {
        medio = A;
        menor = C;
    } else {
        medio = C;
        menor = A;
    }
} else {
    maior = C;
    if (A >= B) {
        medio = A;
        menor = B;
    } else {
        medio = B;
        menor = A;
    }
}
document.write(` ${maior}<br>`)
document.write(` ${medio}<br>`)
document.write(` ${menor}`)