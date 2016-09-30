package com.gzpy.advert.service;

import java.util.List;

import com.gzpy.advert.entity.Ad;

public interface AdService {
	
	//首页显示广告
	public List<Ad> findAdShowIndex();
}
