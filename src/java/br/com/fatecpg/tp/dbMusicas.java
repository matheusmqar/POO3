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
        ArrayList<Musica> musicas = musica.getMusicas();
        for(int i = 0; i < musicas.size(); i++){
            dbMusicas.Insert(musicas.get(i));
        }
    }
    
    public static void Update(Musica musica){
        MUSICAS.set(musica.getId(), musica);
    }
    public static void Delete(int id){
        MUSICAS.remove(id);
    }
    public static Musica SelectById(int id){
        return MUSICAS.get(id);
    }
    public static int getNextId(){
        return MUSICAS.size() > 0 ? MUSICAS.size() : 0;
    }
}
