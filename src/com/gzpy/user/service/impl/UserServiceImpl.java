package com.gzpy.user.service.impl;



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


import com.gzpy.user.dao.UserDao;
import com.gzpy.user.entity.User;
import com.gzpy.user.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
public Page<User> findUserByCurrentPage(int currentPage, int pageSize) {
		
		Pageable pb = new PageRequest(currentPage - 1, pageSize,
				Sort.Direction.ASC, "userId");
		Page<User> page = userDao.findAll(pb);
		
		return page;
	}

@Override
public User findUserById(String userId) {
	// TODO Auto-generated method stub
	return userDao.findOne(userId);
}

@Override
public Page<User> findUserByName(final String inputName, int currentPage, int pageSize) {
	Specification<User> spec=new Specification<User>() {
		
		
		public Predicate toPredicate(Root<User> root, CriteriaQuery<?> query,
				CriteriaBuilder cb) {
			Path<String> name=root.get("userName");
			Predicate searchName=cb.like(name, "%"+inputName+"%");
			query.where(cb.and(searchName));  
			return query.getRestriction();  
			
		}
	};
	return userDao.findAll(spec,new PageRequest(currentPage - 1, pageSize,
			Sort.Direction.ASC, "userId"));
}

}
