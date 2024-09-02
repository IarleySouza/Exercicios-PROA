


let prato = parseFloat(prompt('Imforme o prato: \n[1]Vegetariano - 180 cal \n[2]Peixe - 230 cal \n[3]Frango - 250 cal\n[4] Carne - 350 cal'))
let pra = 0
switch (prato) {
    case 1:
        document.write('Prato: Vegetariano <br>')
        pra = 180
        break
    case 2:
        document.write('Prato: Peixe <br>')
        pra = 230
        break
    case 3:
        document.write('Prato: Frango <br>')
        pra = 250
        break
    case 4:
        document.write('Prato: Carne <br>')
        pra = 350
        break
}

let sob = parseFloat(prompt('Imforme a Sobremessa: \n[1] Abacaxi - 75 cal \n[2] Sorvete diet - 110 cal \n[3] Mouse diet - 170 cal\n[4] Mouse de chocolate - 200 cal'))
let mou = 0
switch (sob) {
    case 1:
        document.write('Sobremesa: Abacaxi <br>')
        mou = 75
        break
    case 2:
        document.write('Sobremesa: Sorvete <i>diet</i> <br>')
        mou = 110
        break
    case 3:
        document.write('Sobremesa: Mouse <i>diet</i> <br>')
        mou = 170
        break
    case 4:
        document.write('Sobremesa: Mouse chocolate <br>')
        mou = 200
        break
}

let bebi = parseFloat(prompt('Imforme a bebida: \n[1] Chá - 20 cal \n[2] Suco de laranja - 70 cal \n[3] Suco de melão - 100 cal\n[4] Refrigerante diet - 65 cal'))

let be = 0
switch (bebi) {
    case 1:
        document.write('Bebida: Chá <br>')
        be = 20
        break
    case 2:
        document.write('Bebida: Suco de laranja <br>')
        be = 70
        break
    case 3:
        document.write('Bebida: Suco de melão <br>')
        be = 100
        break
    case 4:
        document.write('Bebida: Refrigerante <i>diet</i> <br>')
        be = 65
        break
}

let total = be + mou + pra
document.write(`O total de calorias foi de: ${total} cal`)