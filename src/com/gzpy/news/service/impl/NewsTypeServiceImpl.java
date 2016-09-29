package com.gzpy.news.service.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gzpy.news.dao.NewsTypeDao;
import com.gzpy.news.entity.NewsType;
import com.gzpy.news.service.NewsTypeService;

@Service
@Transactional
public class NewsTypeServiceImpl implements NewsTypeService {

	@Autowired
	private NewsTypeDao newsTypeDao;

	@Override
	public List<NewsType> findAllNewsType() {
		
		Specification<NewsType> spec = new Specification<NewsType>() {
			
			@Override
			public Predicate toPredicate(Root<NewsType> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				
				Path<String> delStatus = root.get("delStatus") ;
				
				Predicate status = cb.equal(delStatus,"N");
				query.where(cb.and(status));
				
				return query.getRestriction();
			}
		};
		
		return newsTypeDao.findAll(spec);
	}

	@Override
	public NewsType findNewsTypeByName(final String tName) {
		
		Specification<NewsType> spec = new Specification<NewsType>() {
			
			@Override
			public Predicate toPredicate(Root<NewsType> root, CriteriaQuery<?> query,
					CriteriaBuilder cb) {
				
				Path<String> delStatus = root.get("delStatus");
				Path<String> typeName = root.get("typeName");
				
				Predicate status = cb.equal(delStatus,"N");
				Predicate name = cb.equal(typeName, tName);
				query.where(cb.and(status,name));
				
				return query.getRestriction();
			}
		};
		
		return newsTypeDao.findOne(spec);
	}

	@Override
	public NewsType findNewsTypeById(String typeId) {
		
		return newsTypeDao.findOne(typeId);
	}

}
