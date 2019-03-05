
package com.mhd.test;



import com.mhd.domaintable.User;
import com.mhd.service.UserService;
import java.util.Date;

public class UserTest {
    public static void main(String[] args) {
        //UserService.createTable();
        User user = new User("mhd", "1234", "admin", "Mr.", "mhd", "mhd@gmail.com", "01686239145", new Date(), true);
        UserService.insert(user);
    }
    
    
}
