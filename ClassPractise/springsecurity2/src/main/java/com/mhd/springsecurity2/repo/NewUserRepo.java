package com.mhd.springsecurity2.repo;

import com.mhd.springsecurity2.entity.ConfirmEmailAddUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewUserRepo extends JpaRepository<ConfirmEmailAddUser, Long> {
    ConfirmEmailAddUser findByEmail(String email);

    ConfirmEmailAddUser findByConfirmationToken(String confirmationToken);
}
