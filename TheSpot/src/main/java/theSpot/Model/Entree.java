package theSpot.Model;

public class Entree {
	private int id; 
	private String name;
	private String description;
	private double price;
	
	
	
	public Entree(String name, String description, double price) {
		this.name = name;
		this.description = description;
		this.price = price;
	}
	public Entree() {

	}
	
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Entree [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + "]";
	}

	
	
}
