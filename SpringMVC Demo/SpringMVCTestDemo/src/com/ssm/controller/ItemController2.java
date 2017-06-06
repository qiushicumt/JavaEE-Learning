package com.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.HttpRequestHandler;

import com.ssm.pojo.Item;

public class ItemController2 implements HttpRequestHandler {

	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		List<Item> items = new ArrayList<Item>();
		
		Item item1 = new Item();
		item1.setItemId(1);
		item1.setItemName("����ʼǱ�Y480");
		item1.setItemPrice(4899.00);
		item1.setItemDetail("����ʼǱ�Y480��CPU:I5-3210���ڴ�:8GB��Ӳ��:500GB���Կ�:Ӣ�ض����ļ����Կ�");
		item1.setItemPic("D:\\pictures\\notebook\\lenovo\\y480.jpg");
		
		Item item2 = new Item();
		item2.setItemId(2);
		item2.setItemName("ƻ��iPhone6");
		item2.setItemPrice(5699.00);
		item2.setItemDetail("iPhone 6��4.7Ӣ����Ļ���ֱ���Ϊ1334*750���أ�CPUΪA8������������800�����ؾ�ͷ��ǰ��120�����ظ�������ͷ������Touch ID֧��ָ��ʶ������NFC���ܣ�4G LTE�����ٶȿɴ�150Mbps��֧�ֶ��20��LTEƵ�Ρ�");
		item2.setItemPic("D:\\pictures\\cellphone\\apple\\iphone6.jpg");
		
		items.add(item1);
		items.add(item2);
		
		request.setAttribute("items", items);
		request.getRequestDispatcher("/WEB-INF/jsp/item/itemList.jsp").forward(request, response);

	}

}
