package hu.reof.restock.hibernate;
// Generated 2014.02.19. 23:54:23 by Hibernate Tools 3.6.0

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
@Table(name = "warehouse", schema = "public"
)
public class Warehouse implements java.io.Serializable {

    private long id;
    private String nev;
    private String cim;
    private String kozpont;
    private String tipus;
    

    public Warehouse() {
    }

    public Warehouse(long id, String nev, String cim, String kozpont, String tipus) {
        this.id = id;
        this.nev = nev;
        this.cim = cim;
        this.kozpont = kozpont;
        this.tipus = tipus;
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

    @Column(name = "kozpont", length = 1)
    public String getKozpont() {
        return this.kozpont;
    }

    public void setKozpont(String kozpont) {
        this.kozpont = kozpont;
    }

    @Column(name = "tipus")
    public String getTipus() {
        return this.tipus;
    }

    public void setTipus(String tipus) {
        this.tipus = tipus;
    }

}
