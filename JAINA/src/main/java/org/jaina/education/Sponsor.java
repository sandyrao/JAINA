package org.jaina.education;

import java.util.Calendar;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "SPONSOR")
public class Sponsor {

    @Column(name = "FIRST_NAME")
    private String firstName;

    @Column(name = "MIDDLE_NAME")
    private String middleName;

    @Column(name = "LAST_NAME")
    private String lastName;

    @Column(name = "ADDRESS1")
    private String address1;

    @Column(name = "ADDRESS2")
    private String address2;

    @Column(name = "CITY")
    private String city;

    @Column(name = "ZIP")
    private String zip;

    @Column(name = "COUNTRY")
    private String country;

    @Column(name = "PHONE")
    private String phoneNumber;

    @Column(name = "MOBILE")
    private String mobileNumber;

    @Column(name = "FAX")
    private String fax;

    @Column(name = "EMAIL")
    private String email;

    @Column(name = "START_YEAR")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar startYear;

    @Column(name = "ANNUAL_AMOUNT")
    private long annualAmount;

    @Column(name = "AGGR_AMOUNT")
    private long aggregatedlAmount;

    @Column(name = "STATUS")
    private String status;

    @Column(name = "NON_PROFIT_ID")
    private String nonProfitId;

    @Column(name = "LINKEDIN_ADDRESS")
    private String linkedinAddress;

    @Column(name = "CHARITY_NAME")
    private String charityName;

    @Column(name = "LAST_COMMUNICATED")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date lastCommunicated;

    @Column(name = "PAYMENT_PROFILE")
    private String paymentProfile;

    @Column(name = "COMMENTS")
    private String comments;
}
