package Sonya5.model;

import org.eclipse.persistence.annotations.Convert;
import org.eclipse.persistence.annotations.Converter;
import Sonya5.utils.UUIDConverter;

import javax.persistence.*;
import java.util.UUID;

import com.sap.olingo.jpa.metadata.core.edm.annotation.EdmIgnore;

/**
 * Entity implementation class for Entity: Регистр
 */
@Entity(name = "IISSonya5Регистр")
@Table(schema = "public", name = "Регистр")
public class Registr {

    @Id
    @Converter(converterClass = UUIDConverter.class, name = "primarykey")
    @Convert("primarykey")
    @Column(name = "primarykey", length = 16, unique = true, nullable = false)
    private UUID primarykey;

    @Column(name = "ID")
    private Integer id;

    @EdmIgnore
    @Converter(converterClass = UUIDConverter.class, name = "PrixodDeneg")
    @Convert("PrixodDeneg")
    @Column(name = "ПриходДенег", length = 16, unique = true, nullable = false)
    private UUID _prixoddenegid;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "PrixodDeneg", insertable = false, updatable = false)
    private PrixodDeneg prixoddeneg;

    @EdmIgnore
    @Converter(converterClass = UUIDConverter.class, name = "RasxodDeneg")
    @Convert("RasxodDeneg")
    @Column(name = "РасходДенег", length = 16, unique = true, nullable = false)
    private UUID _rasxoddenegid;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "RasxodDeneg", insertable = false, updatable = false)
    private RasxodDeneg rasxoddeneg;


    public Registr() {
        super();
    }

    public void setPrimarykey(UUID primarykey) {
        this.primarykey = primarykey;
    }

    public UUID getPrimarykey() {
        return primarykey;
    }

    public Integer getID() {
      return id;
    }

    public void setID(Integer id) {
      this.id = id;
    }


}