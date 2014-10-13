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
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;

/**
 * Userauth generated by hbm2java
 */
@Entity
@Table(name = "userauth", schema = "public")
public class Userauth implements java.io.Serializable {

    private String usernev;
    private String nev;
    private String jelszo;
    private Integer aktiv;
    private Integer zarolt;
    private Date reglejarat;
    private Date jelszolejarat;

    public Userauth() {
    }

    public Userauth(String usernev) {
        this.usernev = usernev;
    }

    public Userauth(String usernev, String nev, String jelszo, Integer aktiv, Integer zarolt, Date reglejarat, Date jelszolejarat) {
        this.usernev = usernev;
        this.nev = nev;
        this.jelszo = jelszo;
        this.aktiv = aktiv;
        this.zarolt = zarolt;
        this.reglejarat = reglejarat;
        this.jelszolejarat = jelszolejarat;
    }

    @Id
    @GenericGenerator(name = "increment", strategy = "increment")
    @GeneratedValue(generator = "increment")
    @Column(name = "usernev", unique = true, nullable = false)
    public String getUsernev() {
        return this.usernev;
    }

    public void setUsernev(String usernev) {
        this.usernev = usernev;
    }

    @Column(name = "nev")
    public String getNev() {
        return this.nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    @Column(name = "jelszo")
    public String getJelszo() {
        return this.jelszo;
    }

    public void setJelszo(String jelszo) {
        this.jelszo = jelszo;
    }

    @Column(name = "aktiv")
    public Integer getAktiv() {
        return this.aktiv;
    }

    public void setAktiv(Integer aktiv) {
        this.aktiv = aktiv;
    }

    @Column(name = "zarolt")
    public Integer getZarolt() {
        return this.zarolt;
    }

    public void setZarolt(Integer zarolt) {
        this.zarolt = zarolt;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "reglejarat", length = 13)
    public Date getReglejarat() {
        return this.reglejarat;
    }

    public void setReglejarat(Date reglejarat) {
        this.reglejarat = reglejarat;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "jelszolejarat", length = 13)
    public Date getJelszolejarat() {
        return this.jelszolejarat;
    }

    public void setJelszolejarat(Date jelszolejarat) {
        this.jelszolejarat = jelszolejarat;
    }

}