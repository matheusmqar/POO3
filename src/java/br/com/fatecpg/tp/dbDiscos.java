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
public class dbDiscos {
    private static final ArrayList<Disco> DISCOS = new ArrayList<>();
    public static ArrayList<Disco> SelectAll(){
        return DISCOS;
    }
    public static void Insert(Disco disco){
        DISCOS.add(disco);
    }
}
