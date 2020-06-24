package com.laptrinhjavaweb.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.dao.INewDAO;
import com.laptrinhjavaweb.model.NewModel;

@Repository
public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {

	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
//	@Autowired
//	private SessionFactory session;
//
//	@Override
//	public List findAll() {
//		return (List) session.getCurrentSession().createSQLQuery("SELECT * FROM new");
//	}
	
//	@Override
//	public List<NewModel> findAll() {
//		StringBuilder sql = new StringBuilder("SELECT * FROM jspservletjdbc.news");
//		
//		return query(sql.toString(), new NewMapper());
//	}
	
	


}
