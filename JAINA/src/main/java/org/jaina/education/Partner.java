package org.jaina.education;

import javax.persistence.Column;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "PARTNER")
public class Partner {

    @Column(name = "PARTNER_NAME")
    private String name;

    @Column(name = "NON_PROFIT_ID")
    private String nonProfitId;

    @Column(name = "ADDRESS_1")
    private String address1;

    @Column(name = "ADDRESS_2")
    private String address2;

    @Column(name = "CITY")
    private String city;

    @Column(name = "ZIP")
    private String zip;

    @Column(name = "COUNTRY")
    private String country;

    @Column(name = "PHONE")
    private String phone;

    @Column(name = "MOBILE")
    private String mobile;

    @Column(name = "FAX")
    private String fax;

    @Column(name = "EMAIL")
    private String email;

    @Column(name = "STATUS")
    private String status;

    @Column(name = "CONTACT_FIRST_NAME")
    private String contactFirstName;

    @Column(name = "CONTACT_MIDDLE_NAME")
    private String contactMiddleName;

    @Column(name = "CONTACT_LAST_NAME")
    private String contactLastName;

    @Column(name = "CONTACT_ID")
    private String contactId;

    @Column(name = "CONTACT_ADDRESS_1")
    private String contactAddress1;

    @Column(name = "CONTACT_ADDRESS_2")
    private String contactAddress2;

    @Column(name = "CONTACT_CITY")
    private String contactCity;

    @Column(name = "CONTACT_ZIP")
    private String contactZip;

    @Column(name = "CONTACT_COUNTRY")
    private String contactCountry;

    @Column(name = "CONTACT_PHONE")
    private String contactPhone;

    @Column(name = "CONTACT_MOBILE")
    private String contactMobileNo;

    @Column(name = "CONTACT_FAX")
    private String contactFax;

    @Column(name = "CONTACT_EMAIL")
    private String contactEmail;

    @Column(name = "CONTACT_WEBSITE")
    private String contactWebsiteAddress;

    @Column(name = "COMMENTS")
    private String comments;
}
