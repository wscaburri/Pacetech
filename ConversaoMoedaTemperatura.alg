algoritmo "Conversor - Moeda e Temperatura"

var
valorReal, valorDolar, cotacaoDolar, tempCelsius, tempFahrenheit : real
opcaoMenu : literal

inicio

Escreval("Bem vindo(a)!")
Escreval()

enquanto opcaoMenu <> "5" faca
   Escreval("Selecione a opção desejada:")
   Escreval("1 - Converter Moeda: Real para Dólar")
   Escreval("2 - Converter Moeda: Dólar para Real")
   Escreval("3 - Converter Temperatura: Celsius para Fahrenheit")
   Escreval("4 - Converter Temperatura: Fahrenheit para Celsius")
   Escreval("5 - Sair")
   leia(opcaoMenu)

   limpatela

   escolha opcaoMenu
   caso "1"
      Escreval("Por favor, digite a cotação atual do dólar:")
      leia(cotacaoDolar)

      Escreval("Digite o valor em Reais:")
      leia(valorReal)

      valorDolar <- valorReal / cotacaoDolar

      Escreval("O valor em Dólares é de: $", valorDolar:2:2)
      Escreval()

   caso "2"
      Escreval("Por favor, digite a cotação atual do dólar:")
      leia(cotacaoDolar)

      Escreval("Digite o valor em Dólares:")
      leia(valorDolar)

      valorReal <- valorDolar * cotacaoDolar

      Escreval("O valor em Reais é de: R$", valorReal:2:2)
      Escreval()

   caso "3"
      Escreval("Digite a Temperatura em Graus Celsius:")
      leia(tempCelsius)

      tempFahrenheit <- (tempCelsius * 9/5) + 32

      Escreval("A Temperatura em graus Fahrenheit é de:", tempFahrenheit:2:2,"°")
      Escreval()

   caso "4"
      Escreval("Digite a Temperatura em Graus Fahrenheit:")
      leia(tempFahrenheit)

      tempCelsius <- (tempFahrenheit - 32) * 5/9

      Escreval("A Temperatura é graus Celsius é de:", tempCelsius:2:2,"°")
      Escreval()

   caso "5"
      Escreval("Operação Finalizada")

   outrocaso
      Escreval("Código Inválido. Tente novamente.")
      Escreval()
   fimescolha
fimenquanto
fimalgoritmo
