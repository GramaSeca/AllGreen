package com.allgreensolutions.sistema.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author GABRIEL
 */
@Entity
public class Item implements Serializable {

    @Id
    @GeneratedValue
    private int codigo;
    private String nome;
    private String codigoBarras;
    private double valorUnitario;
    private String um;
    private int estoqueMinimo;

    public Item() {
    }

    public Item(int codigo, String nome, String codigoBaras, double valorUnitario, String um, int estoqueMinimo) {
        this.codigo = codigo;
        this.nome = nome;
        this.codigoBarras = codigoBaras;
        this.valorUnitario = valorUnitario;
        this.um = um;
        this.estoqueMinimo = estoqueMinimo;
    }

    @Override
    public String toString() {
        return codigo + " - " + nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCodigoBarras() {
        return codigoBarras;
    }

    public void setCodigoBarras(String codigoBarras) {
        this.codigoBarras = codigoBarras;
    }

    public double getValorUnitario() {
        return valorUnitario;
    }

    public void setValorUnitario(double valorUnitario) {
        this.valorUnitario = valorUnitario;
    }

    public String getUm() {
        return um;
    }

    public void setUm(String um) {
        this.um = um;
    }

    public int getEstoqueMinimo() {
        return estoqueMinimo;
    }

    public void setEstoqueMinimo(int estoqueMinimo) {
        this.estoqueMinimo = estoqueMinimo;
    }
}
