package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.BlogCustom;
import com.ssm.pojo.BlogQueryVo;

public interface BlogCustomDao {
	List<BlogCustom> selectBlogList(BlogQueryVo blogQueryVo) throws Exception;
	BlogCustom selectBlogById(int blogId) throws Exception;
}
