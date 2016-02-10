/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.allgreensolutions.sistema.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Gabriel
 */
@Entity
public class Usuario implements Serializable {

    @Id
    @GeneratedValue
    private int codigo;
    private String usuario;
    private String senha;
    private String nome;
    private String email;

    public Usuario() {
    }

    public Usuario(int codigo, String usuario, String senha, String nome, String email) {
        this.codigo = codigo;
        this.usuario = usuario;
        this.senha = senha;
        this.nome = nome;
        this.email = email;
    }

    public Usuario(String usuario, String senha, String nome, String email) {
        this.usuario = usuario;
        this.senha = senha;
        this.nome = nome;
        this.email = email;
    }

    @Override
    public String toString() {
        return codigo + " - " + usuario + " - " + nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
