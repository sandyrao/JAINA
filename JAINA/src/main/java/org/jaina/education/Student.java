package org.jaina.education;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "STUDENT")
public class Student {

    @Column(name = "FIRST_NAME")
    @Size(max = 25)
    private String firstName;

    @Column(name = "LAST_NAME")
    @Size(max = 25)
    private String lastName;

    @Column(name = "MIDDLE_NAME")
    @Size(max = 20)
    private String middleName;

    @Column(name = "DATE_OF_BIRTH")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dateOfBirth;

    @Column(name = "ADDRESS_LINE1")
    @Size(max = 30)
    private String addressLine1;

    @Column(name = "ADDRESS_LINE2")
    @Size(max = 30)
    private String addressLine2;

    @Column(name = "CITY")
    @Size(max = 25)
    private String city;

    @Column(name = "ZIP_CODE")
    private int zipCode;

    @Column(name = "COUNTRY")
    private String country;

    @Column(name = "PHONE_NO")
    private String phoneNo;

    @Column(name = "MOB_NO")
    private String mobNo;

    @Column(name = "FAX")
    private String fax;

    @Column(name = "EMAIL")
    private String email;

    @Column(name = "FATHERS_FIRST_NAME")
    private String fathersFirstName;

    @Column(name = "FATHERS_MIDDLE_NAME")
    private String fathersMiddleName;

    @Column(name = "FATHERS_LAST_NAME")
    private String fathersLastName;

    @Column(name = "STUDENT_FILE_ACTIVE")
    @Size(max = 3)
    private String studentFileActive;

    @Column(name = "RELATIONSHIP")
    private String relationship;

    @Column(name = "GUARDIAN_ADDR_LINE1")
    private String guardianAddressLine1;

    @Column(name = "GUARDIAN_ADDR_LINE2")
    private String guardianAddressLine2;

    @ManyToOne
    private Sponsor sponsor= new Sponsor();
    
    @ManyToOne
    private Partner partner= new Partner();
}
