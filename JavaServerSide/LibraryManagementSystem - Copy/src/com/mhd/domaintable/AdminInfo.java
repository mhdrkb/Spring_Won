
package com.mhd.domaintable;

public class AdminInfo {
    private int id;
    private String uname;
    private String pass;

    public AdminInfo() {
    }

    public AdminInfo(int id, String uname, String pass) {
        this.id = id;
        this.uname = uname;
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Override
    public String toString() {
        return "UserInfo{" + "id=" + id + ", uname=" + uname + ", pass=" + pass + '}';
    }
    
}
