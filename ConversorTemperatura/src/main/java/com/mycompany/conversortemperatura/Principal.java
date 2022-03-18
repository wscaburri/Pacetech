package com.mycompany.conversortemperatura;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Scanner leitorScanner = new Scanner(System.in);

        float valorMoeda, valorConvertido, cotacao, temperatura, tempConvertida;
        int opcaoMenu = 0;

        System.out.println("Bem vindo(o)");

        while (opcaoMenu != 5) {

            System.out.println();
            System.out.println("Escolha a opção desejada:");
            System.out.println("1 - Converter Moeda - Real para Dólar\n"
                    + "2 - Converter Moeda - Dólar para Real\n"
                    + "3 - Converter Temperatura - Celsius para Fahrenheit\n"
                    + "4 - Converter Temperatura - Fahrenheit para Celsius\n"
                    + "5 - Sair");
            opcaoMenu = leitorScanner.nextInt();

            switch (opcaoMenu) {
                case 1: {
                    System.out.println("Digite a cotação atual do dólar");
                    cotacao = leitorScanner.nextFloat();

                    System.out.println("Digite o valor em reais a ser convertido");
                    valorMoeda = leitorScanner.nextFloat();

                    valorConvertido = valorMoeda / cotacao;
                    System.out.println("O valor em dólares é de: $" + valorConvertido);
                    break;
                }
                case 2: {
                    System.out.println("Digite a cotação atual do dólar");
                    cotacao = leitorScanner.nextFloat();

                    System.out.println("Digite o valor em dólares a ser convertido");
                    valorMoeda = leitorScanner.nextFloat();

                    valorConvertido = valorMoeda * cotacao;
                    System.out.println("O valor em reais é de: R$" + valorConvertido);
                    break;
                }
                case 3: {
                    System.out.println("Digite a temperatura em Celsius a ser convertida:");
                    temperatura = leitorScanner.nextFloat();

                    tempConvertida = (temperatura * 9 / 5) + 32;

                    System.out.println("A temperatura em graus Fahrenheit é:" + tempConvertida + "°");
                    break;
                }
                case 4: {
                    System.out.println("Digite a temperatura em Fahrenheit a ser convertida:");
                    temperatura = leitorScanner.nextFloat();

                    tempConvertida = (temperatura - 32) * 5 / 9;

                    System.out.println("A temperatura em graus Celsius é:" + tempConvertida + "°");
                    break;
                }
                case 5:
                    System.out.println("Operação finalizada");
                    break;
                default:
                    System.out.println("Operação inválida. Tente novamente.");
                    break;
            }
        }
    }
}
