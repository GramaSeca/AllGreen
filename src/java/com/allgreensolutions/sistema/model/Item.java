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
    private String codigoBaras;
    private String um;
    private int estoqueMinimo;
    private String fornecedor;

    public Item() {
    }

    public Item(int codigo, String nome, String codigoBaras, String um, int estoqueMinimo, String fornecedor) {
        this.codigo = codigo;
        this.nome = nome;
        this.codigoBaras = codigoBaras;
        this.um = um;
        this.estoqueMinimo = estoqueMinimo;
        this.fornecedor = fornecedor;
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

    public String getCodigoBaras() {
        return codigoBaras;
    }

    public void setCodigoBaras(String codigoBaras) {
        this.codigoBaras = codigoBaras;
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

    public String getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(String fornecedor) {
        this.fornecedor = fornecedor;
    }
}
