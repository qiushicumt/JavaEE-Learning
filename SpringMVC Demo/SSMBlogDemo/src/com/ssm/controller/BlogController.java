package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.BlogCustom;
import com.ssm.pojo.BlogQueryVo;
import com.ssm.service.BlogService;

@Controller
@RequestMapping(value="/ssm/blogs/")
public class BlogController {

	@Autowired
	private BlogService blogService;
	
	/**
	 * QueryTitleBlogs，根据查询条件，查询BlogList列表
	 * @param model
	 * @param blogQueryVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/queryTitleBlogs", method={RequestMethod.POST, RequestMethod.GET})
	public String queryTitleBlogs(Model model, BlogQueryVo blogQueryVo) throws Exception {
		List<BlogCustom> blogCustoms = blogService.findBlogList(blogQueryVo);
		model.addAttribute("blogs", blogCustoms);
		return "blogs/bloglist";
	}
	
	/**
	 * QueryBlogs，显示博客列表
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/queryBlogs", method={RequestMethod.POST, RequestMethod.GET} )
	public String queryBlogs(Model model) throws Exception {
		return "blogs/bloglist";
	}
	
	/**
	 * EditBlog，根据传入的BlogId查询到对应的Blog，显示到Blog编辑页面
	 * @param model
	 * @param blog_id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/editBlog", method={RequestMethod.POST, RequestMethod.GET})
	public String editBlog(Model model, Integer blog_id) throws Exception {
		BlogCustom blogCustom = blogService.getBlogCustomByBlogId(blog_id);
		model.addAttribute("blog", blogCustom);
		return "blogs/editblog";
	}
	
	/**
	 * AddBlog，进入添加Blog页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/addBlog", method=RequestMethod.GET)
	public String addBlog() throws Exception {
		return "blogs/addblog";
	}
}
