package com.gzpy.user.service;

import org.springframework.data.domain.Page;

import com.gzpy.user.entity.User;

public interface UserService {
	/**
	 * 分页查找所有用户
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public Page<User> findUserByCurrentPage(int currentPage, int pageSize);
	
	public User findUserById(String userId);
	
	public Page<User> findUserByName(final String inputName, int currentPage,
			int pageSize);

}
