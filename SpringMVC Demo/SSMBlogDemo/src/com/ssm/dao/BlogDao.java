package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.Blog;

public interface BlogDao {
	void insertBlog(Blog blog) throws Exception;
	void deleteBlog(int blogId) throws Exception;
	void updateBlog(Blog blog) throws Exception;
	Blog selectBlogById(int blogId) throws Exception;
	List<Blog> selectBlogs() throws Exception;
}
