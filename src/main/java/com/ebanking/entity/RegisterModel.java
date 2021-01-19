/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebanking.entity;

import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;


public class RegisterModel {
    private String name;
    
    private String username;
    
    private String password;
    
    private String rePassword;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birthdate;
    
    private String address;
    
    private String district;
    
    private String city;
    
    private String nationality;
    
    private String gender;
    
    private String cmnd;
    
    private String email;
    
    private String phone;
    
    private String captcha;

    public RegisterModel() {
    }

    public RegisterModel(String name, String username, String password, String rePassword, LocalDate birthdate, String address, String district, String city, String nationality, String gender, String cmnd, String email, String phone, String captcha) {
        this.name = name;
        this.username = username;
        this.password = password;
        this.rePassword = rePassword;
        this.birthdate = birthdate;
        this.address = address;
        this.district = district;
        this.city = city;
        this.nationality = nationality;
        this.gender = gender;
        this.cmnd = cmnd;
        this.email = email;
        this.phone = phone;
        this.captcha = captcha;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public LocalDate getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(LocalDate birthdate) {
        this.birthdate = birthdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    
    
}
