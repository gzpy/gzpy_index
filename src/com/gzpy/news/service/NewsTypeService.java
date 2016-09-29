package com.gzpy.news.service;

import java.util.List;

import com.gzpy.news.entity.NewsType;

public interface NewsTypeService {
		
	/**
	 * 查询所有文章类型，不分页
	 * @return
	 */
	public List<NewsType> findAllNewsType();
	
	/**
	 * 按类型名称查询文章类型
	 * @return
	 */
	public NewsType findNewsTypeByName(String tName);
	
	/**
	 * 按Id查询文章类型
	 * @param typeId
	 * @return
	 */
	public NewsType findNewsTypeById(String typeId);
}
