algoritmo "Conversor de Temperatura"

var
temperatura, tempConvertida : vetor[1..4] de real
horario : vetor[1..4] de literal

procedimento menu()
inicio
Escreval()
Escreval("1 - Converter temperatura de Celsius para Fahrenheit")
Escreval("2 - Converter temperatura de Fahrenheit para Celsius")
Escreval("3 - Sair do Menu")
Escreva("Selecione a opção desejada:")
fimprocedimento

procedimento conversor(entrada : inteiro)
var
i : inteiro
inicio
se entrada = 1 entao
   para i de 1 ate 4 faca
      tempConvertida[i] <- (temperatura[i] * 9/5) + 32
   fimpara
senao
   para i de 1 ate 4 faca
      tempConvertida[i] <- (temperatura[i] - 32) * 5/9
   fimpara
fimse

ordenar(entrada)
fimprocedimento

procedimento ordenar(opcao : inteiro)
var
i, j : inteiro
aux1, aux2 : real
aux3 : literal
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se ( temperatura[j] > temperatura[i] ) entao
         aux1 <- temperatura[i]
         temperatura[i] <- temperatura[j]
         temperatura[j] <- aux1

         aux2 <- tempConvertida[i]
         tempConvertida[i] <- tempConvertida[j]
         tempConvertida[j] <- aux2

         aux3 <- horario[i]
         horario[i] <- horario[j]
         horario[j] <- aux3
      fimse
   fimpara
fimpara

se opcao = 1 entao
   limpatela
   para i de 1 ate 4 faca
      Escreval("A temperatura ", temperatura[i],"°C, registrada às ", horario[i], "h, equivale à ", tempConvertida[i]:2:2,"°F")
   fimpara
senao
   se opcao = 2 entao
      limpatela
      para i de 1 ate 4 faca
         Escreval("A temperatura ", temperatura[i],"°F, registrada às ", horario[i], "h, equivale à ", tempConvertida[i]:2:2,"°C")
      fimpara
   senao
      Escreval("Programa finalizado")
   fimse
fimse
fimprocedimento

procedimento entrada()
var
opcao : inteiro
i : inteiro
inicio
enquanto opcao <> 3 faca
   menu()
   leia(opcao)
   se (opcao < 0) ou (opcao > 3) entao
      limpatela
      Escreval("Opção inválida, tente outra vez")
   senao
      para i de 1 ate 4 faca
         limpatela
         se opcao <> 3 entao
            Escreval("Digite uma temperatura")
            leia(temperatura[i])
            Escreval("Digite o horário")
            leia(horario[i])
         fimse
      fimpara
      conversor(opcao)
   fimse
fimenquanto
fimprocedimento

inicio
entrada()
fimalgoritmo
