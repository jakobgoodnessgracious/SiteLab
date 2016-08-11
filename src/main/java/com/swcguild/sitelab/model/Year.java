/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.sitelab.model;

/**
 *
 * @author Jakob
 */
public class Year {
    private int year;
    private double startBal;
    private double endBal;
    
public Year(){}

    public Year(int year, double startBal, double endBal) {
        this.year = year;
        this.startBal = startBal;
        this.endBal = endBal;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public double getStartBal() {
        return startBal;
    }

    public void setStartBal(double startBal) {
        this.startBal = startBal;
    }

    public double getEndBal() {
        return endBal;
    }

    public void setEndBal(double endBal) {
        this.endBal = endBal;
    }


}
