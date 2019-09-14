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
public class Banda extends SuperClass{
    private ArrayList<Disco> discos;
    public Banda(int id, String name) {
        super(id, name);
        this.discos = new ArrayList<>();
    }
    public void addDiscos(Disco disco){
        this.discos.add(disco);
    }
}