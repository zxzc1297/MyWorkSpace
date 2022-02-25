package com.example.mini.member.vo;

import org.springframework.stereotype.Component;

@Component("itemVO")
public class ItemVO {
	private String name;
	private int price;
	
	public ItemVO() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
