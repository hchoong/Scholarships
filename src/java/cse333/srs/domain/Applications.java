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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Howie
 */
@Entity
@Table(name = "applications")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Applications.findAll", query = "SELECT a FROM Applications a"),
    @NamedQuery(name = "Applications.findByApplicationsId", query = "SELECT a FROM Applications a WHERE a.applicationsId = :applicationsId"),
    @NamedQuery(name = "Applications.findByDateApplied", query = "SELECT a FROM Applications a WHERE a.dateApplied = :dateApplied"),
    @NamedQuery(name = "Applications.findByStatus", query = "SELECT a FROM Applications a WHERE a.status = :status"),
    @NamedQuery(name = "Applications.findByStudentsId", query = "SELECT a FROM Applications a WHERE a.studentsId = :studentsId")})
public class Applications implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "applications_id")
    private Integer applicationsId;
    @Lob
    @Column(name = "statement")
    private String statement;
    @Lob
    @Column(name = "recommendation")
    private String recommendation;
    @Lob
    @Column(name = "resume")
    private String resume;
    @Column(name = "date_applied")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateApplied;
    @Column(name = "status")
    private String status;
    @JoinColumn(name = "students_id", referencedColumnName = "student_id")
    @ManyToOne(optional = false)
    private Students studentsId;
    @JoinColumn(name = "scholarships_id", referencedColumnName = "scholarships_id")
    @ManyToOne(optional = false)
    private Scholarships scholarshipsId;

    public Applications() {
    }

    public Applications(Integer applicationsId) {
        this.applicationsId = applicationsId;
    }

    public Applications(Integer applicationsId, Date dateApplied) {
        this.applicationsId = applicationsId;
        this.dateApplied = dateApplied;
    }

    public Integer getApplicationsId() {
        return applicationsId;
    }

    public void setApplicationsId(Integer applicationsId) {
        this.applicationsId = applicationsId;
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

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public Date getDateApplied() {
        return dateApplied;
    }

    public void setDateApplied(Date dateApplied) {
        this.dateApplied = dateApplied;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Students getStudentsId() {
        return studentsId;
    }

    public void setStudentsId(Students studentsId) {
        this.studentsId = studentsId;
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
        hash += (applicationsId != null ? applicationsId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Applications)) {
            return false;
        }
        Applications other = (Applications) object;
        if ((this.applicationsId == null && other.applicationsId != null) || (this.applicationsId != null && !this.applicationsId.equals(other.applicationsId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cse333.srs.domain.Applications[ applicationsId=" + applicationsId + " ]";
    }
}
