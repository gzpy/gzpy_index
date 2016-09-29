package com.gzpy.news.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.gzpy.news.entity.News;

public class NewsDaoImpl {

	@Autowired
	private EntityManager em;

	public List<News> findNewsByType(String typeId) {

		StringBuffer sb = new StringBuffer();
		sb.append("select n from News n where n.typeId=:typeId ")
			.append("and n.delStatus = :delStatus order by n.issueDate desc");

		Query query = this.em.createQuery(sb.toString());
		query.setParameter("typeId", typeId).setParameter("delStatus", "N");

		return query.getResultList();
	}
	
	public List<News> findNewsByStatus(String delStatus,List<String> typeIds){
		
		StringBuffer sb = new StringBuffer();
		sb.append("select n from News n where n.delStatus = :delStatus ")
			.append("and n.typeId in(:typeIds)")
			.append("order by n.issueDate desc");
		
		Query query = this.em.createQuery(sb.toString());
		query.setParameter("delStatus", delStatus).setParameter("typeIds", typeIds);
		
		return query.getResultList();
	}
}
