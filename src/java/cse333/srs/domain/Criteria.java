/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cse333.srs.domain;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Howie
 */
@Entity
@Table(name = "criteria")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Criteria.findAll", query = "SELECT c FROM Criteria c"),
    @NamedQuery(name = "Criteria.findByCriteriaId", query = "SELECT c FROM Criteria c WHERE c.criteriaId = :criteriaId"),
    @NamedQuery(name = "Criteria.findByGpa", query = "SELECT c FROM Criteria c WHERE c.gpa = :gpa"),
    @NamedQuery(name = "Criteria.findByMajor", query = "SELECT c FROM Criteria c WHERE c.major = :major"),
    @NamedQuery(name = "Criteria.findByEthnicity", query = "SELECT c FROM Criteria c WHERE c.ethnicity = :ethnicity"),
    @NamedQuery(name = "Criteria.findByStatement", query = "SELECT c FROM Criteria c WHERE c.statement = :statement"),
    @NamedQuery(name = "Criteria.findByRecommendation", query = "SELECT c FROM Criteria c WHERE c.recommendation = :recommendation")})
public class Criteria implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "criteria_id")
    private Integer criteriaId;
    @Basic(optional = false)
    @Column(name = "gpa")
    private int gpa;
    @Basic(optional = false)
    @Column(name = "major")
    private String major;
    @Basic(optional = false)
    @Column(name = "ethnicity")
    private String ethnicity;
    @Basic(optional = false)
    @Column(name = "statement")
    private String statement;
    @Basic(optional = false)
    @Column(name = "recommendation")
    private String recommendation;
    @JoinColumn(name = "scholarships_id", referencedColumnName = "scholarships_id")
    @ManyToOne(optional = false)
    private Scholarships scholarshipsId;

    public Criteria() {
    }

    public Criteria(Integer criteriaId) {
        this.criteriaId = criteriaId;
    }

    public Criteria(Integer criteriaId, int gpa, String major, String ethnicity, String statement, String recommendation) {
        this.criteriaId = criteriaId;
        this.gpa = gpa;
        this.major = major;
        this.ethnicity = ethnicity;
        this.statement = statement;
        this.recommendation = recommendation;
    }

    public Integer getCriteriaId() {
        return criteriaId;
    }

    public void setCriteriaId(Integer criteriaId) {
        this.criteriaId = criteriaId;
    }

    public int getGpa() {
        return gpa;
    }

    public void setGpa(int gpa) {
        this.gpa = gpa;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getEthnicity() {
        return ethnicity;
    }

    public void setEthnicity(String ethnicity) {
        this.ethnicity = ethnicity;
    }

    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }

    public String getRecommendation() {
        return recommendation;
    }

    public void setRecommendation(String recommendation) {
        this.recommendation = recommendation;
    }

    public Scholarships getScholarshipsId() {
        return scholarshipsId;
    }

    public void setScholarshipsId(Scholarships scholarshipsId) {
        this.scholarshipsId = scholarshipsId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (criteriaId != null ? criteriaId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Criteria)) {
            return false;
        }
        Criteria other = (Criteria) object;
        if ((this.criteriaId == null && other.criteriaId != null) || (this.criteriaId != null && !this.criteriaId.equals(other.criteriaId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cse333.srs.domain.Criteria[ criteriaId=" + criteriaId + " ]";
    }
    
}
