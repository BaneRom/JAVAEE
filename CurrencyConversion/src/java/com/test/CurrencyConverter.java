/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test;

import javax.ejb.Stateless;

/**
 *
 * @author dell
 */
@Stateless
public class CurrencyConverter implements CurrencyConverterLocal {

    @Override
    public float RtoD(float R) {
        return R/80;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public float DtoR(float D) {
        return D*80;
    }
}
