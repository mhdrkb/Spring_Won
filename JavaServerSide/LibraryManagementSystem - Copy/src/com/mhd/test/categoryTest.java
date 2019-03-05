package com.mhd.test;

import com.mhd.domaintable.ProductCategory;
import com.mhd.service.ProductCategoryService;
import java.util.Locale;


/**
 *
 * @author User
 */
public class categoryTest {

    public static void main(String[] args) {
       //ProductCategoryService.createTable();
        ProductCategory cat=new ProductCategory();
        cat.setName("Speaker");
        ProductCategoryService.insert(cat);

    }
}
