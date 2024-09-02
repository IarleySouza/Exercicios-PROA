// - Escreva um programa em Javascript, que leia um número e informe se ele é divisível por 10, por 5 ou por 2 ou se não é divisível por nenhum deles.

function apertar() {
    let num = document.getElementById('div');
    let div = Number(num.value);
    let res = document.getElementById('res')
    if (div % 10 == 0 && div % 5 == 0 && div % 2 == 0) {
        res.innerHTML = `O número ${div} e divisivel por 10<br>`
        res.innerHTML += `Também e divisivel por 5.<br>`
        res.innerHTML += `Também e divisivel por 2.`
    } else if (div % 2 == 0) {
        res.innerHTML = `O número ${div} é divisivel por 2.`
    } else if (div % 5 == 0) {
        res.innerHTML = `O número ${div} é divisivel por 5.`
    }else {
        res.innerHTML = `O número ${div}, não é divisivel por 10, por 5 ou por 2.`
    }
}