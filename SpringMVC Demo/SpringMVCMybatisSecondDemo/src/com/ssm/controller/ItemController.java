package com.ssm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.ItemCustom;
import com.ssm.pojo.ItemQueryVo;
import com.ssm.service.ItemService;

@Controller
@RequestMapping(value="/ssm/items/")
public class ItemController {

	@Autowired
	private ItemService itemService;
	
	/**
	 * Items信息查询列表页面
	 * @return
	 * @throws Exception
	 */
	
	@RequestMapping(value="/queryItems", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView queryItems(ItemQueryVo itemQueryVo) throws Exception {
		
		//	findItemList()方法传入商品扩展字段的查询类
		List<ItemCustom> itemCustoms = itemService.findItemList(itemQueryVo);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("items", itemCustoms);
		modelAndView.setViewName("items/itemslist");
		return modelAndView;
		
	}
	
	
	/**
	 * 修改商品信息展示页面，通过返回ModelAndView的方式
	 * @return
	 * @throws Exception
	 
	@RequestMapping(value="/editItemView")
	public ModelAndView editItemView() throws Exception {
		
		ItemCustom itemCustom = itemService.getItemById(4);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("item", itemCustom);
		modelAndView.setViewName("items/itemedit");
		
		return modelAndView;
	}
	*/
	/**
	 * 修改商品信息展示页面，通过返回String的方式
	 * @return String（逻辑视图名）
	 * @throws Exception
	 * 
	 * 使用 @RequestParam注解可以进行简单类型绑定，即将request传入的简单类型的数据绑定到形参中(此时，request传入的数据名可以和形参名不一致)
	 */
	@RequestMapping(value="/editItemView", method={RequestMethod.GET, RequestMethod.POST})
	public String editItemView(Model model, @RequestParam(value="id") Integer itemId) throws Exception {
		
		ItemCustom itemCustom = itemService.getItemById(itemId);
		model.addAttribute("item", itemCustom);
		
		return "items/itemedit";
	}
	
	//此处，需要对传入的 itemCustom对象进行校验，在 ItemCustom前面加上 @Validated进行修饰，然后再添加一个BindingResult对象类型的形参
	//bindingResult形参用于接收校验错误信息
	//MultipartFile item_image形参，用于接收form表单里面传递的图片数据
	@RequestMapping(value="/editItemSubmit", method=RequestMethod.POST) 
	public String editItemSubmit(Model model, Integer itemId, @Validated ItemCustom itemCustom, BindingResult bindingResult, MultipartFile item_image) throws Exception {
		
		//	判断是否存在校验错误信息
		if(bindingResult.hasErrors()) {
			List<ObjectError> objectErrors = bindingResult.getAllErrors();
			for (ObjectError objectError : objectErrors) {
				System.out.println(objectError.getDefaultMessage());
			}
			model.addAttribute("allErrors", objectErrors);
			return "items/itemedit";
		}
		//	接收上传图片
		String fileName = item_image.getOriginalFilename();
		if( item_image != null && fileName != null && fileName.length()>0 ) {
			String imagePath = "F:\\workspace\\upload\\images\\";
			String newImageName = UUID.randomUUID()+fileName.substring(fileName.lastIndexOf("."));
			File newImage = new File(imagePath + newImageName);
			item_image.transferTo(newImage);
			itemCustom.setItemPic(newImageName);	
		}
		itemService.updateItem(itemId, itemCustom);
		
		return "items/itemresult";
	}
	
	@RequestMapping(value="/deleteItem")
	public String deleteItem(HttpServletRequest request) throws Exception {
		int itemId = Integer.parseInt(request.getParameter("id"));
		itemService.deleteItem(itemId);
		return "items/itemresult";
	}
	
	/**
	 * 根据接收到的商品ID，进行批量删除操作
	 * @param itemIds（数组，接收传入的多个商品ID）
	 * @return 返回到结果页面
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteBatchItems", method=RequestMethod.POST)
	public String deleteBatchItems(Integer[] itemIds) throws Exception {
		//	根据接收到的多个id，进行批量删除
		for (Integer itemid : itemIds) {
			itemService.deleteItem(itemid);
		}
		return "items/itemresult";
	}
	
	
	@RequestMapping(value="/addItem")
	public String addItem() throws Exception {
		
		return "items/itemadd";
	}
	
	/**
	 * 插入增加的商品信息
	 * @param itemQueryVo
	 * @return
	 * @throws Exception
	 */
	
	/*
	@RequestMapping(value="/insertItem", method=RequestMethod.POST )
	public String insertItem(ItemQueryVo itemQueryVo) throws Exception {
		itemService.insertItem(itemQueryVo.getItemCustom());
		return "items/itemresult";
	}
	*/
	/**
	 * 插入增加的商品信息
	 * @param itemQueryVo，形参用于接收Item的相关属性值
	 * @param itemImage，形参用于接收上传的图片数据
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/insertItem", method=RequestMethod.POST)
	public String insertItem(ItemQueryVo itemQueryVo, MultipartFile itemImage) throws Exception {
		ItemCustom itemCustom = itemQueryVo.getItemCustom();
		
		//	接收上传图片，存储到虚拟目录
		if(itemImage != null) {
			//	设置上传图片的保存的路径
			String imagePath = "F:\\workspace\\upload\\images\\";
			//	获取上传的图片的文件名
			String fileName = itemImage.getOriginalFilename();
			//	设置图片的新的名称
			//	UUID获取一个随机码，fileName.substring()方法用于获取图片的扩展名
			String newFileName = UUID.randomUUID() + fileName.substring(fileName.lastIndexOf("."));
			//	设置新图片
			File newFile = new File(imagePath + newFileName); 
			//	将数据写入新图片，放到虚拟目录中
			itemImage.transferTo(newFile);
			
			//	itemCustom设置图片名称
			itemCustom.setItemPic(newFileName);
		}
		//	将itemCustom更新到数据库中
		itemService.insertItem(itemCustom);
		return "items/itemresult";
	}
	
	/**
	 * 批量编辑商品信息，显示信息页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/editItems", method={RequestMethod.POST, RequestMethod.GET})
	public String editItemsQuery(Model model, Integer[] itemIds) throws Exception {
		
		List<ItemCustom> items = new ArrayList<ItemCustom>();
		for (Integer itemId : itemIds) {
			ItemCustom itemCustom = itemService.getItemById(itemId);
			items.add(itemCustom);
		}
		model.addAttribute("items", items);
		return "items/itemsedit";
	}
	
	/**
	 * 批量编辑，ItemQueryVo扩展类进行List数据的接收
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/editBatchItems", method=RequestMethod.POST)
	public String editBatchItems(ItemQueryVo itemQueryVo, MultipartFile itemImage) throws Exception {
		List<ItemCustom> itemCustoms = itemQueryVo.getItemCustoms();
		for (ItemCustom itemCustom : itemCustoms) {
			itemService.updateItem(itemCustom.getItemId(), itemCustom);
		}
		return "items/itemresult";
	}
}
