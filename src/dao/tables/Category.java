package dao.tables;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category implements Serializable {
	@Id
	@GeneratedValue
	/** identifier field */
	private int categoryid;

	/** nullable persistent field */
	private String categoryname;

	/** full constructor */
	public Category(int categoryid, String categoryname) {
		this.categoryid = categoryid;
		this.categoryname = categoryname;
	
	}

	/** default constructor */
	public Category() {
	}

	/** minimal constructor */
	public Category(int categoryid) {
		this.categoryid = categoryid;
		
	}
	@Column(name="categoryid")
	public Integer getCategoryid() {
		return this.categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	@Column(name="categoryname")
	public String getCategoryname() {
		return this.categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
}
