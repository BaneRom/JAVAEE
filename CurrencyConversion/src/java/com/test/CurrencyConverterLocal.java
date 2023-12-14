/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test;

import javax.ejb.Local;

/**
 *
 * @author dell
 */
@Local
public interface CurrencyConverterLocal {

    float RtoD(float R);

    float DtoR(float D);
    
}
