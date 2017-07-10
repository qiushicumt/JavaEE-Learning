package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.BlogCustomDao;
import com.ssm.pojo.BlogCustom;
import com.ssm.pojo.BlogQueryVo;
import com.ssm.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogCustomDao blogCustomDao;
	
	@Override
	public List<BlogCustom> findBlogList(BlogQueryVo blogQueryVo) throws Exception {
		List<BlogCustom> blogCustoms = blogCustomDao.selectBlogList(blogQueryVo);
		return blogCustoms;
	}

	@Override
	public BlogCustom getBlogCustomByBlogId(int blogId) throws Exception {
		BlogCustom blogCustom = blogCustomDao.selectBlogById(blogId);
		return blogCustom;
	}

}
