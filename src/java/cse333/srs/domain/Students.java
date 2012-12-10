/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.domain;

import java.io.Serializable;
import java.math.BigInteger;
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

/**
 *
 * @author Howie
 */
@Entity
@Table(name = "students")
@NamedQueries({
    @NamedQuery(name = "Students.findAll", query = "SELECT s FROM Students s"),
    @NamedQuery(name = "Students.findByStudentId", query = "SELECT s FROM Students s WHERE s.studentId = :studentId"),
    @NamedQuery(name = "Students.findByAddress", query = "SELECT s FROM Students s WHERE s.address = :address"),
    @NamedQuery(name = "Students.findByHomePhone", query = "SELECT s FROM Students s WHERE s.homePhone = :homePhone"),
    @NamedQuery(name = "Students.findByCellPhone", query = "SELECT s FROM Students s WHERE s.cellPhone = :cellPhone"),
    @NamedQuery(name = "Students.findBySchoolId", query = "SELECT s FROM Students s WHERE s.schoolId = :schoolId"),
    @NamedQuery(name = "Students.findByYear", query = "SELECT s FROM Students s WHERE s.year = :year"),
    @NamedQuery(name = "Students.findByMajor", query = "SELECT s FROM Students s WHERE s.major = :major"),
    @NamedQuery(name = "Students.findByGpa", query = "SELECT s FROM Students s WHERE s.gpa = :gpa"),
    @NamedQuery(name = "Students.findByMinor", query = "SELECT s FROM Students s WHERE s.minor = :minor"),
    @NamedQuery(name = "Students.findByGender", query = "SELECT s FROM Students s WHERE s.gender = :gender"),
    @NamedQuery(name = "Students.findByGraduationMonth", query = "SELECT s FROM Students s WHERE s.graduationMonth = :graduationMonth"),
    @NamedQuery(name = "Students.findByGraduationYear", query = "SELECT s FROM Students s WHERE s.graduationYear = :graduationYear")})
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
    @Basic(optional = false)
    @Column(name = "home_phone")
    private String homePhone;
    @Basic(optional = false)
    @Column(name = "cell_phone")
    private String cellPhone;
    @Basic(optional = false)
    @Column(name = "school_id")
    private int schoolId;
    @Basic(optional = false)
    @Column(name = "year")
    private String year;
    @Basic(optional = false)
    @Column(name = "major")
    private String major;
    @Basic(optional = false)
    @Column(name = "gpa")
    private BigInteger gpa;
    @Basic(optional = false)
    @Column(name = "minor")
    private String minor;
    @Basic(optional = false)
    @Column(name = "gender")
    private String gender;
    @Basic(optional = false)
    @Column(name = "graduation_month")
    private String graduationMonth;
    @Basic(optional = false)
    @Column(name = "graduation_year")
    @Temporal(TemporalType.DATE)
    private Date graduationYear;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @OneToOne(fetch = FetchType.EAGER)
    private Users userId;

    public Students() {
    }

    public Students(Integer studentId) {
        this.studentId = studentId;
    }

    public Students(Integer studentId, String address, String homePhone, String cellPhone, int schoolId, String year, String major, BigInteger gpa, String minor, String gender, String graduationMonth, Date graduationYear) {
        this.studentId = studentId;
        this.address = address;
        this.homePhone = homePhone;
        this.cellPhone = cellPhone;
        this.schoolId = schoolId;
        this.year = year;
        this.major = major;
        this.gpa = gpa;
        this.minor = minor;
        this.gender = gender;
        this.graduationMonth = graduationMonth;
        this.graduationYear = graduationYear;
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

    public String getHomePhone() {
        return homePhone;
    }

    public void setHomePhone(String homePhone) {
        this.homePhone = homePhone;
    }

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone;
    }

    public int getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(int schoolId) {
        this.schoolId = schoolId;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public BigInteger getGpa() {
        return gpa;
    }

    public void setGpa(BigInteger gpa) {
        this.gpa = gpa;
    }

    public String getMinor() {
        return minor;
    }

    public void setMinor(String minor) {
        this.minor = minor;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGraduationMonth() {
        return graduationMonth;
    }

    public void setGraduationMonth(String graduationMonth) {
        this.graduationMonth = graduationMonth;
    }

    public Date getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(Date graduationYear) {
        this.graduationYear = graduationYear;
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
