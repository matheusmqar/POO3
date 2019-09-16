/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.tp;

/**
 *
 * @author marlon.santos
 */
public class Disco {
    private String nome;
    private String artista;
    private int ano;
    
    public Disco(String nome, String artista, int ano) {
        this.ano = ano;
        this.nome = nome;
        this.artista = artista;
}

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
    
}

