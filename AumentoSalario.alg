algoritmo "Aumento de Salário"

var
salario, aumento, novoSalario: real
inicio
escreval("Digite seu salário")
leia(salario)
novoSalario <- salario * 1.3
aumento <- novoSalario - salario
escreval("Seu aumento foi de R$", aumento, " e seu salário agora é R$", novoSalario)
fimalgoritmo
