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
public class dbBandas{
    private static final ArrayList<Banda> BANDAS = new ArrayList<>();
    public static ArrayList<Banda> SelectAll(){
        return BANDAS;
    }
    public static void Insert(Banda banda){
        BANDAS.add(banda);
        ArrayList<Disco> discos = banda.getDiscos();
        for(int i = 0; i < discos.size(); i++){
            dbDiscos.Insert(discos.get(i));
        }
        ArrayList<Musica> musicas = banda.getMusicas();
        for(int i = 0; i < musicas.size(); i++){
            dbMusicas.Insert(musicas.get(i));
        }
    }
    public static void Update(Banda banda){
        BANDAS.set(banda.getId(), banda);
    }
    public static void Delete(int id){
        BANDAS.remove(id);
    }
}
