package com.ssm.pojo;

public class Item {
	
	private int itemId;
	private String itemName;
	private double itemPrice;
	private String itemDetail;
	private String itemPic;
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public double getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemDetail() {
		return itemDetail;
	}
	public void setItemDetail(String itemDetail) {
		this.itemDetail = itemDetail;
	}
	public String getItemPic() {
		return itemPic;
	}
	public void setItemPic(String itemPic) {
		this.itemPic = itemPic;
	}
	
	public Item() {
		super();
	}
	
	public Item(int itemId, String itemName, double itemPrice, String itemDetail, String itemPic) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemDetail = itemDetail;
		this.itemPic = itemPic;
	}
	
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemDetail="
				+ itemDetail + ", itemPic=" + itemPic + "]";
	}
	
}
