/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.hibernate;

/**
 *
 * @author Ati
 */
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotBlank;


@Entity
@Table(name = "supplier", schema = "public"
)
public class Supplier implements java.io.Serializable {

    private long id;
    private String nev;
    private String cim;
    private String adoszam;
    private String telefonszam;
    

    public Supplier() {
    }

    public Supplier(long id, String nev, String cim, String adoszam, String telefonszam) {
        this.id = id;
        this.nev = nev;
        this.cim = cim;
        this.adoszam = adoszam;
        this.telefonszam = telefonszam;
    }

   

    @Id
    @GenericGenerator(name = "increment", strategy = "increment")
    @GeneratedValue(generator = "increment")
    @Column(name = "id", unique = true, nullable = false)
    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "nev", nullable = false)
    public String getNev() {
        return this.nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    @Column(name = "cim")
    public String getCim() {
        return this.cim;
    }

    public void setCim(String cim) {
        this.cim = cim;
    }
    
    @Column(name = "telefonszam")
    public String getTelefonszam() {
        return this.telefonszam;
    }

    public void setTelefonszam(String telefonszam) {
        this.telefonszam = telefonszam;
    }
    
    @Column(name = "adoszam")
    public String getAdoszam() {
        return this.adoszam;
    }

    public void setAdoszam(String adoszams) {
        this.adoszam = adoszam;
    }

    

}
