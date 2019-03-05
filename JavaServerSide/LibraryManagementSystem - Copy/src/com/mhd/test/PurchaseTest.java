/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mhd.test;

import com.mhd.domaintable.ProductCategory;
import com.mhd.domaintable.Purchase;
import com.mhd.service.PurchaseService;
import java.util.Date;
import java.util.List;

/**
 *
 * @author User
 */
public class PurchaseTest {

    public static void main(String[] args) {
         //PurchaseService.createTable();
            /*ProductCategory c = new ProductCategory();
            c.setId(2);
        Purchase purchase = new Purchase("Hp 6000 Laptop", "HP600", 10, 50000.0, 500000.0, new Date(), c);
        PurchaseService.insertMain(purchase);*/
         
       List<Purchase> list = PurchaseService.getProductList();
        for(Purchase p : list)
        System.out.println(p);
    }
}
