package com.ersin.todolistback.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ersin.todolistback.dao.ToDoItemDAO;
import com.ersin.todolistback.dto.ToDoItem;

@Repository("toDoItemDAO")
@Transactional
public class ToDoItemDAOImpl implements ToDoItemDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ToDoItem> list() {
		String selectQuery = "FROM ToDoItem";

		@SuppressWarnings("unchecked")
		Query<ToDoItem> query = sessionFactory.getCurrentSession().createQuery(selectQuery);

		return query.getResultList();
	}

	@Override
	public List<ToDoItem> listItemsByList(int listId) {
		String selectQuery = "FROM ToDoItem WHERE listId = :listId";

		Query<ToDoItem> query = sessionFactory.getCurrentSession().createQuery(selectQuery, ToDoItem.class);

		query.setParameter("listId", listId);

		return query.getResultList();
	}

	@Override
	public ToDoItem get(int id) {
		return sessionFactory.getCurrentSession().get(ToDoItem.class, Integer.valueOf(id));
	}

	@Override
	public boolean add(ToDoItem toDoItem) {
		try {
			sessionFactory.getCurrentSession().persist(toDoItem);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(ToDoItem toDoItem) {
		try {
			sessionFactory.getCurrentSession().update(toDoItem);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(ToDoItem toDoItem) {
		try {
			sessionFactory.getCurrentSession().delete(toDoItem);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
