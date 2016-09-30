package com.gzpy.advert.service.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzpy.advert.dao.AdDao;
import com.gzpy.advert.entity.Ad;
import com.gzpy.advert.service.AdService;


@Service
@Transactional
public class AdServiceImpl implements AdService {
	
	@Autowired
	private AdDao adDao;
	
	@Override
	public List<Ad> findAdShowIndex() {
		
		return adDao.findByDelStatusOrderByAdOrderAsc("N");
	}

}
