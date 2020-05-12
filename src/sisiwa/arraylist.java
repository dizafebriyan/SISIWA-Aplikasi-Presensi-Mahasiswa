/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sisiwa;

/**
 *
 * @author user
 */

class arraylist{
    int id;
    String kd,nm;
 
    public arraylist(String kd, String nm)
    {
        this.kd = kd;
        this.nm = nm;
    }
     
     
    public String getKd()
    {
       return kd;
    }
     
    public String getNm()
    {
       return nm;
    }
}
