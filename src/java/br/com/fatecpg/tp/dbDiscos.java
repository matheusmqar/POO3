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
    private static ArrayList<Disco> DISCOS;
    public static ArrayList<Disco> getDisco(){
        if (DISCOS == null) {
        DISCOS = new ArrayList<>();
        DISCOS.add(new Disco("Meteora","Linkin Park",2003));
        DISCOS.add(new Disco("Jijitsujo","Reol",2018));
        DISCOS.add(new Disco("Cores e Valores","Racionais MC",2004));
        }
        return DISCOS;
    }
    public static void addDisco(Disco d){
       getDisco().add(d);
    }
    public static void setDisco (int index, Disco d){
        getDisco().set(index,d);
    }
    public static void removeDisco (int index){
        getDisco().remove(index);
    }
    
}
