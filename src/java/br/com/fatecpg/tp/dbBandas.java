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
    public static ArrayList<Banda> ListAll(){
        return BANDAS;
    }
    public static void Add(Banda banda){
        BANDAS.add(banda);
    }
}
