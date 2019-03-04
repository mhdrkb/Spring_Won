package com.mhd.springsecurity2.service;

import com.mhd.springsecurity2.entity.ConfirmEmailAddUser;
import com.mhd.springsecurity2.repo.NewUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewUserService {
    private NewUserRepo newUserRepo;

    @Autowired
    public NewUserService(NewUserRepo newUserRepo) {
        this.newUserRepo = newUserRepo;
    }

    public ConfirmEmailAddUser findByEmail(String email){
        return newUserRepo.findByEmail(email);
    }
    public ConfirmEmailAddUser findByConfirmationToken(String confirmationToken){
        return newUserRepo.findByConfirmationToken(confirmationToken);
    }
    public  void saveNewUser(ConfirmEmailAddUser confirmEmailAddUser){
        newUserRepo.save(confirmEmailAddUser);
    }
}
