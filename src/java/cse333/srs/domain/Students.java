/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Howie
 */
@Entity
@Table(name = "students")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Students.findAll", query = "SELECT s FROM Students s"),
    @NamedQuery(name = "Students.findByStudentId", query = "SELECT s FROM Students s WHERE s.studentId = :studentId"),
    @NamedQuery(name = "Students.findByAddress", query = "SELECT s FROM Students s WHERE s.address = :address"),
    @NamedQuery(name = "Students.findByAddress2", query = "SELECT s FROM Students s WHERE s.address2 = :address2"),
    @NamedQuery(name = "Students.findByCity", query = "SELECT s FROM Students s WHERE s.city = :city"),
    @NamedQuery(name = "Students.findByState", query = "SELECT s FROM Students s WHERE s.state = :state"),
    @NamedQuery(name = "Students.findByCountry", query = "SELECT s FROM Students s WHERE s.country = :country"),
    @NamedQuery(name = "Students.findByZipcode", query = "SELECT s FROM Students s WHERE s.zipcode = :zipcode"),
    @NamedQuery(name = "Students.findByMajor", query = "SELECT s FROM Students s WHERE s.major = :major"),
    @NamedQuery(name = "Students.findByGpa", query = "SELECT s FROM Students s WHERE s.gpa = :gpa"),
    @NamedQuery(name = "Students.findByMinor", query = "SELECT s FROM Students s WHERE s.minor = :minor"),
    @NamedQuery(name = "Students.findBySex", query = "SELECT s FROM Students s WHERE s.sex = :sex"),
    @NamedQuery(name = "Students.findByEthnicity", query = "SELECT s FROM Students s WHERE s.ethnicity = :ethnicity"),
    @NamedQuery(name = "Students.findByGraduationYear", query = "SELECT s FROM Students s WHERE s.graduationYear = :graduationYear"),
    @NamedQuery(name = "Students.findByFirstname", query = "SELECT s FROM Students s WHERE s.firstname = :firstname"),
    @NamedQuery(name = "Students.findByLastname", query = "SELECT s FROM Students s WHERE s.lastname = :lastname"),
    @NamedQuery(name = "Students.findByMiddlename", query = "SELECT s FROM Students s WHERE s.middlename = :middlename")})
public class Students implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "student_id")
    private Integer studentId;
    @Basic(optional = false)
    @Column(name = "address")
    private String address;
    @Column(name = "address2")
    private String address2;
    @Basic(optional = false)
    @Column(name = "city")
    private String city;
    @Basic(optional = false)
    @Column(name = "state")
    private String state;
    @Basic(optional = false)
    @Column(name = "country")
    private String country;
    @Basic(optional = false)
    @Column(name = "zipcode")
    private String zipcode;
    @Column(name = "major")
    private String major;
    @Basic(optional = false)
    @Column(name = "gpa")
    private String gpa;
    @Column(name = "minor")
    private String minor;
    @Basic(optional = false)
    @Column(name = "sex")
    private String sex;
    @Column(name = "ethnicity")
    private String ethnicity;
    @Column(name = "graduation_year")
    @Temporal(TemporalType.DATE)
    private Date graduationYear;
    @Basic(optional = false)
    @Column(name = "firstname")
    private String firstname;
    @Basic(optional = false)
    @Column(name = "lastname")
    private String lastname;
    @Column(name = "middlename")
    private String middlename;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @OneToOne(optional = false, fetch = FetchType.EAGER)
    private Users userId;

    public Students() {
    }

    public Students(Integer studentId) {
        this.studentId = studentId;
    }

    public Students(Integer studentId, String address, String city, String state, String country, String zipcode, String gpa, String sex, String firstname, String lastname) {
        this.studentId = studentId;
        this.address = address;
        this.city = city;
        this.state = state;
        this.country = country;
        this.zipcode = zipcode;
        this.gpa = gpa;
        this.sex = sex;
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getGpa() {
        return gpa;
    }

    public void setGpa(String gpa) {
        this.gpa = gpa;
    }

    public String getMinor() {
        return minor;
    }

    public void setMinor(String minor) {
        this.minor = minor;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEthnicity() {
        return ethnicity;
    }

    public void setEthnicity(String ethnicity) {
        this.ethnicity = ethnicity;
    }

    public Date getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Date graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMiddlename() {
        return middlename;
    }

    public void setMiddlename(String middlename) {
        this.middlename = middlename;
    }

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
        this.userId = userId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (studentId != null ? studentId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Students)) {
            return false;
        }
        Students other = (Students) object;
        if ((this.studentId == null && other.studentId != null) || (this.studentId != null && !this.studentId.equals(other.studentId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cse333.srs.domain.Students[ studentId=" + studentId + " ]";
    }
    
}
