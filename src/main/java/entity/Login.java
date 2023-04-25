package entity;

public class Login {

	private int id;
	private String username;
	private String password;
	private Boolean role;
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Login(int id, String username, String password, Boolean role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getRole() {
		return role;
	}
	public void setRole(Boolean role) {
		this.role = role;
	}
	public boolean isRole() {
		return this.role;
	}

	
}
