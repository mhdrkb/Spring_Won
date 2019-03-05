
package com.apress.projsp.store;

public class Product {
    private String name;
    private String price;
    private int id;

    public Product(int id, String name, String price) {
        this.name = name;
        this.price = price;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return price;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Product{" + "name=" + name + ", price=" + price + ", id=" + id + '}';
    }

    
    
}
