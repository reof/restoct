/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.reof.restock.hibernate;

/**
 *
 * @author fulopattila
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
@Table(name = "stock", schema = "public"
)
public class Stock implements java.io.Serializable {

    private long id;
    private String nev;
    private String cikkszam;
    private String mennyisegi_egyseg;
    private Integer egysegar;
    private String gyariszam;
    private Integer afa;
    private String szallito;
    

    public Stock() {
    }

    public Stock(long id, String nev, String cikkszam, String mennyisegi_egyseg, Integer egysegar, String gyariszam, Integer afa, String szallito) {
        this.id = id;
        this.nev = nev;
        this.cikkszam = cikkszam;
        this.mennyisegi_egyseg = mennyisegi_egyseg;
        this.egysegar = egysegar;
        this.gyariszam = gyariszam;
        this.afa = afa;
        this.szallito = szallito;
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

    @Column(name = "nev")
    public String getNev() {
        return this.nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    @Column(name = "cikkszam")
    public String getCikkszam() {
        return this.cikkszam;
    }

    public void setCikkszam(String cikkszam) {
        this.cikkszam = cikkszam;
    }
    
    @Column(name = "mennyisegi_egyseg")
    public String getMennyisegi_egyseg() {
        return this.mennyisegi_egyseg;
    }

    public void setMennyisegi_egyseg(String mennyisegi_egyseg) {
        this.mennyisegi_egyseg = mennyisegi_egyseg;
    }
    
    @Column(name = "egysegar")
    public Integer getEgysegar() {
        return this.egysegar;
    }

    public void setEgysegar(Integer egysegar) {
        this.egysegar = egysegar;
    }
    
    @Column(name = "gyariszam")
    public String getGyariszam() {
        return this.gyariszam;
    }

    public void setGyariszam(String gyariszam) {
        this.gyariszam = gyariszam;
    }
    
    @Column(name = "afa")
    public Integer getAfa() {
        return this.afa;
    }

    public void setAfa(Integer afa) {
        this.afa = afa;
    }
    
    @Column(name = "szallito")
    public String getSzallito() {
        return this.szallito;
    }

    public void setSzallito(String szallito) {
        this.szallito = szallito;
    }
}
