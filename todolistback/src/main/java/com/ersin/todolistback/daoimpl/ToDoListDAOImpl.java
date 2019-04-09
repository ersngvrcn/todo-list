package com.ersin.todolistback.daoimpl;

import java.util.List;


import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ersin.todolistback.dao.ToDoListDAO;
import com.ersin.todolistback.dto.ToDoList;

@Repository("toDoListDAO")
@Transactional
public class ToDoListDAOImpl implements ToDoListDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ToDoList> list() {
		
		String selectQuery = "FROM ToDoList";
		
		@SuppressWarnings("unchecked")
		Query<ToDoList> query = sessionFactory.getCurrentSession().createQuery(selectQuery);
		
		return query.getResultList();
	}

	@Override
	public ToDoList get(int id) {

		return sessionFactory.getCurrentSession().get(ToDoList.class, Integer.valueOf(id));
	}

	@Override
	public boolean add(ToDoList toDoList) {
		try {
			sessionFactory.getCurrentSession().persist(toDoList);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean update(ToDoList toDoList) {

		try {
			sessionFactory.getCurrentSession().update(toDoList);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(ToDoList toDoList) {

		try {
			sessionFactory.getCurrentSession().delete(toDoList);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
