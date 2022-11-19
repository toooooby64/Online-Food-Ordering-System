package theSpot.Model;

import java.time.LocalDateTime;
import java.util.HashMap;

public class Order {
	private int id; 
	private int userID;
	private String status;
	private LocalDateTime createdAt;
	private HashMap<Integer,Integer> itemsInCart = new HashMap<>();
	
	public Order(int userID) {
		this.userID = userID;
		this.status = "Created";
		this.createdAt = LocalDateTime.now();
	}
	
	public Order() {}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return userID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public LocalDateTime getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
	public HashMap<Integer,Integer> getItemsInCart() {
		return itemsInCart;
	}
	public void setItemsInCart(HashMap<Integer,Integer> itemsInCart) {
		this.itemsInCart = itemsInCart;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", userID=" + userID + ", status=" + status + ", createdAt=" + createdAt
				+ ", itemsInCart=" + itemsInCart + "]";
	}


	
	
	
}
