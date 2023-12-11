package Sonya5.model;

import org.eclipse.persistence.annotations.Convert;
import org.eclipse.persistence.annotations.Converter;
import Sonya5.utils.UUIDConverter;

import javax.persistence.*;
import java.util.UUID;

import com.sap.olingo.jpa.metadata.core.edm.annotation.EdmIgnore;
import java.util.Date;
import java.util.List;

/**
 * Entity implementation class for Entity: РасходДенег
 */
@Entity(name = "IISSonya5РасходДенег")
@Table(schema = "public", name = "РасходДенег")
public class RasxodDeneg {

    @Id
    @Converter(converterClass = UUIDConverter.class, name = "primarykey")
    @Convert("primarykey")
    @Column(name = "primarykey", length = 16, unique = true, nullable = false)
    private UUID primarykey;

    @Column(name = "ID")
    private Integer id;

    @Column(name = "Дата")
    private Date дата;

    @Column(name = "Банк")
    private String банк;

    @Column(name = "Счет")
    private Integer счет;

    @Column(name = "ИНН")
    private Integer инн;

    @Column(name = "БИК")
    private Integer бик;

    @Column(name = "Сумма")
    private Integer сумма;

    @EdmIgnore
    @Converter(converterClass = UUIDConverter.class, name = "Postavshhiki")
    @Convert("Postavshhiki")
    @Column(name = "Поставщики", length = 16, unique = true, nullable = false)
    private UUID _postavshhikiid;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "Postavshhiki", insertable = false, updatable = false)
    private Postavshhiki postavshhiki;

    @OneToMany(mappedBy = "rasxoddeneg", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<SostavMaterialy> sostavmaterialys;


    public RasxodDeneg() {
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

    public Date getДата() {
      return дата;
    }

    public void setДата(Date дата) {
      this.дата = дата;
    }

    public String getБанк() {
      return банк;
    }

    public void setБанк(String банк) {
      this.банк = банк;
    }

    public Integer getСчет() {
      return счет;
    }

    public void setСчет(Integer счет) {
      this.счет = счет;
    }

    public Integer getИНН() {
      return инн;
    }

    public void setИНН(Integer инн) {
      this.инн = инн;
    }

    public Integer getБИК() {
      return бик;
    }

    public void setБИК(Integer бик) {
      this.бик = бик;
    }

    public Integer getСумма() {
      return сумма;
    }

    public void setСумма(Integer сумма) {
      this.сумма = сумма;
    }


}