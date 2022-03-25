package projetosemana07;

public class Empregado {

    private String nome;
    private String sobrenome;
    private float salarioMensal;
    private float salarioAnual;
    private float salarioComAumento;

    Empregado(String nome, String sobrenome, float salarioMensal) {
        this.setNome(nome);
        this.setSobrenome(sobrenome);
        this.setSalarioMensal(salarioMensal);
        this.setSalarioAnual(getSalarioMensal());
        this.setSalarioComAumento(getSalarioAnual());
    }
               
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalarioMensal() {
        return salarioMensal;
    }

    public void setSalarioMensal(float salarioMensal) {
        if (salarioMensal < 0) {
            this.salarioMensal = 0.0f;
        } else {
            this.salarioMensal = salarioMensal;
        }
    }
    
    public float getSalarioAnual() {
        return salarioAnual;
    }

    public void setSalarioAnual(float salarioMensal) {
        this.salarioAnual = salarioMensal * 12;
    }

    public float getSalarioComAumento() {
        return salarioComAumento;
    }

    public void setSalarioComAumento(float salarioAnual) {
        this.salarioComAumento = salarioAnual * 1.1f;
    }
}
