package model;
public class MenuItem {
	private int id; 
	private String name;
	private String description;
	private double price;
	private String image;
	private int quantity;
	
	public MenuItem(String image, String name, String description, double price) {
		this.image = image;
		this.name = name;
		this.description = description;
		this.price = price;
		this.setQuantity(+1);
	}
	public MenuItem() {}
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
	public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity+=quantity;
	}
	@Override
	public String toString() {
		return "MenuItem [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", image=" + image + ", quantity=" + quantity + "]";
	}
	
}
