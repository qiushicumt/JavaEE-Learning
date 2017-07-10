package com.ssm.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.ssm.validation.ValidationGroup1;

public class Item {
	
	private int itemId;
	
	@Size(min=1, max=50, message="{itemname.length.error.message}", groups=ValidationGroup1.class)
	@NotNull(message="{itemname.notnull.error.message}")
	private String itemName;
	
	@NotNull(message="{itemprice.notnull.error.message}")
	private float itemPrice;
	
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
	public float getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(float itemPrice) {
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
	
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemDetail="
				+ itemDetail + ", itemPic=" + itemPic + "]";
	}
	
}
