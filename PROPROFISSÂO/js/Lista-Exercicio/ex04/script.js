let A = parseFloat(prompt('Digite o valor de A:')) //88
let B = parseFloat(prompt('Digite o valor de B:')) //99
let C = parseFloat(prompt('Digite o valor de C:')) //100

if (A > B && C < B){
    document.write("O número maior é " + A + " e depois " + B + " e " + C)
}else if (B > C && C > A){
    document.write("O número maior é " + B + " e depois " + C + " e " + A)
}else if(C > A && A > B){
    document.write("O número maior é " + C + " e depois " + A + " e " + B)
}else if(A > C && C > B){
    document.write("O número maior é " + A + " e depois " + C + " e " + B)
}else if(A < B && A > C){
    document.write("O número maior é " + B + " e depois " + A + " e " + C)
}else if(C > A && B > A){
    document.write("O número maior é " + C + " e depois " + B + " e " + A)
}else{
    document.write("valor invalido")
}
