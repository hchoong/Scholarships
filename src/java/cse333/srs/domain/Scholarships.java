/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Howie
 */
@Entity
@Table(name = "scholarships")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Scholarships.findAll", query = "SELECT s FROM Scholarships s"),
    @NamedQuery(name = "Scholarships.findByScholarshipsId", query = "SELECT s FROM Scholarships s WHERE s.scholarshipsId = :scholarshipsId"),
    @NamedQuery(name = "Scholarships.findByName", query = "SELECT s FROM Scholarships s WHERE s.name = :name"),
    @NamedQuery(name = "Scholarships.findByDescriptions", query = "SELECT s FROM Scholarships s WHERE s.descriptions = :descriptions"),
    @NamedQuery(name = "Scholarships.findByQualifications", query = "SELECT s FROM Scholarships s WHERE s.qualifications = :qualifications"),
    @NamedQuery(name = "Scholarships.findByAmount", query = "SELECT s FROM Scholarships s WHERE s.amount = :amount"),
    @NamedQuery(name = "Scholarships.findByQuantity", query = "SELECT s FROM Scholarships s WHERE s.quantity = :quantity"),
    @NamedQuery(name = "Scholarships.findByAcademicYear", query = "SELECT s FROM Scholarships s WHERE s.academicYear = :academicYear")})
public class Scholarships implements Serializable {
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "scholarshipsId")
    private List<Applications> applicationsList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "scholarshipsId")
    private List<Criteria> criteriaList;
    @Basic(optional = false)
    @Column(name = "deadline")
    @Temporal(TemporalType.DATE)
    private Date deadline;
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "scholarships_id")
    private Integer scholarshipsId;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "descriptions")
    private String descriptions;
    @Basic(optional = false)
    @Column(name = "qualifications")
    private String qualifications;
    @Basic(optional = false)
    @Column(name = "amount")
    private int amount;
    @Basic(optional = false)
    @Column(name = "quantity")
    private int quantity;
    @Basic(optional = false)
    @Column(name = "academic_year")
    private String academicYear;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "scholarshipsId")
    private Criteria criteria;

    public Scholarships() {
    }

    public Scholarships(Integer scholarshipsId) {
        this.scholarshipsId = scholarshipsId;
    }

    public Scholarships(Integer scholarshipsId, String name, String descriptions, String qualifications, int amount, int quantity, String academicYear) {
        this.scholarshipsId = scholarshipsId;
        this.name = name;
        this.descriptions = descriptions;
        this.qualifications = qualifications;
        this.amount = amount;
        this.quantity = quantity;
        this.academicYear = academicYear;
    }

    public Integer getScholarshipsId() {
        return scholarshipsId;
    }

    public void setScholarshipsId(Integer scholarshipsId) {
        this.scholarshipsId = scholarshipsId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public String getQualifications() {
        return qualifications;
    }

    public void setQualifications(String qualifications) {
        this.qualifications = qualifications;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getAcademicYear() {
        return academicYear;
    }

    public void setAcademicYear(String academicYear) {
        this.academicYear = academicYear;
    }

    @XmlTransient
    public Criteria getCriteria() {
        return criteria;
    }

    public void setCriteria(Criteria criteria) {
        this.criteria = criteria;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (scholarshipsId != null ? scholarshipsId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Scholarships)) {
            return false;
        }
        Scholarships other = (Scholarships) object;
        if ((this.scholarshipsId == null && other.scholarshipsId != null) || (this.scholarshipsId != null && !this.scholarshipsId.equals(other.scholarshipsId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cse333.srs.domain.Scholarships[ scholarshipsId=" + scholarshipsId + " ]";
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    @XmlTransient
    public List<Criteria> getCriteriaList() {
        return criteriaList;
    }

    public void setCriteriaList(List<Criteria> criteriaList) {
        this.criteriaList = criteriaList;
    }

    @XmlTransient
    public List<Applications> getApplicationsList() {
        return applicationsList;
    }

    public void setApplicationsList(List<Applications> applicationsList) {
        this.applicationsList = applicationsList;
    }
    
}
