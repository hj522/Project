package login.vo;

public class LoginVO {
	private String id;
	private String pass;
	private String name;
	private String tel;
	private String email;
	
	public LoginVO() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return String.format("LoginVO [id=%s, pass=%s, name=%s, tel=%s, email=%s]", id, pass, name, tel, email);
	}
	
	
}
