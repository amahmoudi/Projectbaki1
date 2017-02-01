package dao.tables;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "adminuser")
public class Adminuser implements Serializable {
	@Id
	@GeneratedValue
	/** identifier field */
	private Integer id;
	/** persistent field */
	private String userid;
	/** persistent field */
	private String password;

	/** full constructor */
	public Adminuser(Integer id, String userid, String password) {
		this.id = id;
		this.userid = userid;
		this.password = password;
	}

	/** default constructor */
	public Adminuser() {
	}

	@Column(name = "id")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "userid")
	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Column(name = "password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
