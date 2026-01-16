package springmvcsearch.model;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class FormFields {
    private String name;
    private String email;
    private int age;
    @DateTimeFormat(pattern ="dd/mm/yyyy" )
    private Date  dob;

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    private List<String> roles;

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    private String contact;
    private String password;
    private Address address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "FormFields{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", age=" + age +
                ", dob=" + dob +
                ", roles=" + roles +
                ", contact='" + contact + '\'' +
                ", password='" + password + '\'' +
                ", address=" + address +
                '}';
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
