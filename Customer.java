package Model;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String password;
	private String type;
	
	
	
	public Customer(String name, String email, String password, String type) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.type = type;
	}
	public Customer() {}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", type="
				+ type + "]";
	}
	
	
	
	

}
