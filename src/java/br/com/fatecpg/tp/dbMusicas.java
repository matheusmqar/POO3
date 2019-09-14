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
public class dbMusicas {
    private static final ArrayList<Musica> MUSICAS = new ArrayList<>();
    public static ArrayList<Musica> SelectAll(){
        return MUSICAS;
    }
    public static void Insert(Musica musica){
        MUSICAS.add(musica);
    }
}
