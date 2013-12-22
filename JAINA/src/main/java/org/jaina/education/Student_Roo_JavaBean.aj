// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.jaina.education;

import java.util.Date;
import java.util.Set;
import org.jaina.education.Partner;
import org.jaina.education.Sponsor;
import org.jaina.education.Student;

privileged aspect Student_Roo_JavaBean {
    
    public String Student.getFirstName() {
        return this.firstName;
    }
    
    public void Student.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Student.getLastName() {
        return this.lastName;
    }
    
    public void Student.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String Student.getMiddleName() {
        return this.middleName;
    }
    
    public void Student.setMiddleName(String middleName) {
        this.middleName = middleName;
    }
    
    public Date Student.getDateOfBirth() {
        return this.dateOfBirth;
    }
    
    public void Student.setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    
    public String Student.getAddressLine1() {
        return this.addressLine1;
    }
    
    public void Student.setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }
    
    public String Student.getAddressLine2() {
        return this.addressLine2;
    }
    
    public void Student.setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }
    
    public String Student.getCity() {
        return this.city;
    }
    
    public void Student.setCity(String city) {
        this.city = city;
    }
    
    public int Student.getZipCode() {
        return this.zipCode;
    }
    
    public void Student.setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }
    
    public String Student.getCountry() {
        return this.country;
    }
    
    public void Student.setCountry(String country) {
        this.country = country;
    }
    
    public String Student.getPhoneNo() {
        return this.phoneNo;
    }
    
    public void Student.setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }
    
    public String Student.getMobNo() {
        return this.mobNo;
    }
    
    public void Student.setMobNo(String mobNo) {
        this.mobNo = mobNo;
    }
    
    public String Student.getFax() {
        return this.fax;
    }
    
    public void Student.setFax(String fax) {
        this.fax = fax;
    }
    
    public String Student.getEmail() {
        return this.email;
    }
    
    public void Student.setEmail(String email) {
        this.email = email;
    }
    
    public String Student.getFathersFirstName() {
        return this.fathersFirstName;
    }
    
    public void Student.setFathersFirstName(String fathersFirstName) {
        this.fathersFirstName = fathersFirstName;
    }
    
    public String Student.getFathersMiddleName() {
        return this.fathersMiddleName;
    }
    
    public void Student.setFathersMiddleName(String fathersMiddleName) {
        this.fathersMiddleName = fathersMiddleName;
    }
    
    public String Student.getFathersLastName() {
        return this.fathersLastName;
    }
    
    public void Student.setFathersLastName(String fathersLastName) {
        this.fathersLastName = fathersLastName;
    }
    
    public String Student.getStudentFileActive() {
        return this.studentFileActive;
    }
    
    public void Student.setStudentFileActive(String studentFileActive) {
        this.studentFileActive = studentFileActive;
    }
    
    public String Student.getRelationship() {
        return this.relationship;
    }
    
    public void Student.setRelationship(String relationship) {
        this.relationship = relationship;
    }
    
    public String Student.getGuardianAddressLine1() {
        return this.guardianAddressLine1;
    }
    
    public void Student.setGuardianAddressLine1(String guardianAddressLine1) {
        this.guardianAddressLine1 = guardianAddressLine1;
    }
    
    public String Student.getGuardianAddressLine2() {
        return this.guardianAddressLine2;
    }
    
    public void Student.setGuardianAddressLine2(String guardianAddressLine2) {
        this.guardianAddressLine2 = guardianAddressLine2;
    }
    
    public Set<Sponsor> Student.getSponsors() {
        return this.sponsors;
    }
    
    public void Student.setSponsors(Set<Sponsor> sponsors) {
        this.sponsors = sponsors;
    }
    
    public Set<Partner> Student.getPartners() {
        return this.partners;
    }
    
    public void Student.setPartners(Set<Partner> partners) {
        this.partners = partners;
    }
    
}
