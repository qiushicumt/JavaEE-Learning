package com.ssm.service;

import java.util.List;

import com.ssm.pojo.BlogCustom;
import com.ssm.pojo.BlogQueryVo;

public interface BlogService {
	//	根据查询条件，查询Blog列表
	List<BlogCustom> findBlogList(BlogQueryVo blogQueryVo ) throws Exception;
	
	//	根据BlogID，查询单个的Blog
	BlogCustom getBlogCustomByBlogId(int blogId) throws Exception;
	
}
