package com.mhd.springsecurity2.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "new_user")
public class ConfirmEmailAddUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "first_name")
    @NotEmpty(message = "Please provide your first name")
    private String firstName;
    @Column(name = "lasst_name")
    @NotEmpty(message = "Please provide your last name")
    private String lastName;

    private String userName;

    private String password;
    @Column(name = "email", nullable = false, unique = true)
    @Email(message = "Please provide a valid e-mail")
    @NotEmpty(message = "Please provide an e-mail")
    private String email;
    @Column(name = "enabled")
    private boolean enabled;
    @Column(name = "confirmation_token")
    private String confirmationToken;

    public ConfirmEmailAddUser() {
    }

    public ConfirmEmailAddUser(@NotEmpty(message = "Please provide your first name") String firstName, @NotEmpty(message = "Please provide your last name") String lastName, String userName, String password, @Email(message = "Please provide a valid e-mail") @NotEmpty(message = "Please provide an e-mail") String email, boolean enabled, String confirmationToken) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.enabled = enabled;
        this.confirmationToken = confirmationToken;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getConfirmationToken() {
        return confirmationToken;
    }

    public void setConfirmationToken(String confirmationToken) {
        this.confirmationToken = confirmationToken;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ConfirmEmailAddUser that = (ConfirmEmailAddUser) o;
        return enabled == that.enabled &&
                Objects.equals(id, that.id) &&
                Objects.equals(firstName, that.firstName) &&
                Objects.equals(lastName, that.lastName) &&
                Objects.equals(userName, that.userName) &&
                Objects.equals(password, that.password) &&
                Objects.equals(email, that.email) &&
                Objects.equals(confirmationToken, that.confirmationToken);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, firstName, lastName, userName, password, email, enabled, confirmationToken);
    }

    @Override
    public String toString() {
        return "ConfirmEmailAddUser{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", enabled=" + enabled +
                ", confirmationToken='" + confirmationToken + '\'' +
                '}';
    }
}
