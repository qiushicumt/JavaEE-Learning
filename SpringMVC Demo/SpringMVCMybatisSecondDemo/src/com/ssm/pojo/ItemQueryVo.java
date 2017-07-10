package com.ssm.pojo;

import java.util.List;

public class ItemQueryVo {
	private Item item;
	private ItemCustom itemCustom;
	
	private List<ItemCustom> itemCustoms;
	
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public ItemCustom getItemCustom() {
		return itemCustom;
	}
	public void setItemCustom(ItemCustom itemCustom) {
		this.itemCustom = itemCustom;
	}
	public List<ItemCustom> getItemCustoms() {
		return itemCustoms;
	}
	public void setItemCustoms(List<ItemCustom> itemCustoms) {
		this.itemCustoms = itemCustoms;
	}
	
}
