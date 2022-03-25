package projetosemana07;

import java.util.Scanner;

public class ProjetoSemana07 {

    public static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        Empregado empregado1 = new Empregado("Wellington", "Scaburri", -550.0f);
        Empregado empregado2 = new Empregado("Danielle", "Baer", 4500.50f);
        
        System.out.println("O funcionário " + empregado1.getNome() + " " + empregado1.getSobrenome()
                + " recebe um salário anual atual de: R$" + empregado1.getSalarioAnual()
                + " e com aumento de 10% será de: R$ " + empregado1.getSalarioComAumento());
               
        System.out.println("O funcionário " + empregado2.getNome() + " " + empregado2.getSobrenome()
                + " recebe um salário anual atual de: R$" + empregado2.getSalarioAnual()
                + " e com aumento de 10% será de: R$ " + empregado2.getSalarioComAumento());
    }
}
