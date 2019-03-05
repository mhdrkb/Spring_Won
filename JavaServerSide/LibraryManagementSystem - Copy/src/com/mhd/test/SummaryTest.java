package com.mhd.test;

import com.mhd.domaintable.Purchase;
import com.mhd.domaintable.Summary;
import com.mhd.service.SummaryService;
import java.util.Date;
import java.util.List;

public class SummaryTest {

    public static void main(String[] args) {
        //SummaryService.createTable();
           Purchase purchase = new Purchase();
        purchase.setId(1);
        Summary summary = new Summary("HP 5000", "HP5000", 50, 0, 50, new Date(), purchase);
        SummaryService.insert(summary);
         
      // List<Summary> list = SummaryService.getSummaryList();
      // for(Summary s: list){
      //System.out.println(s);
   //    }
    }
}
