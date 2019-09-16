/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.tp;

import java.util.ArrayList;

/**
 *
 * @author marlon.santos
 */
public class Musica extends SuperClass{
    
    private Banda banda;
    private Disco disco;
    private ArrayList<Musica> musicas;
    
    public Musica(int id, String name) {
        super(id, name);
        this.banda = new Banda(id, name);
        /*this.disco = new Disco(id, name);*/
    }
    
    public ArrayList<Musica> getMusicas(){
        return this.musicas;
    }
    
    public void addMusica(Musica musica){
        this.musicas.add(musica);
    }
   
}
