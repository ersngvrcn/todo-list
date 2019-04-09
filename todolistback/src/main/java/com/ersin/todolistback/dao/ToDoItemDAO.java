package com.ersin.todolistback.dao;

import java.util.List;

import com.ersin.todolistback.dto.ToDoItem;

public interface ToDoItemDAO {

	List<ToDoItem> list();
	
	List<ToDoItem> listItemsByList(int listId);

	ToDoItem get(int id);

	boolean add(ToDoItem toDoItem);

	boolean update(ToDoItem toDoItem);

	boolean delete(ToDoItem toDoItem);

}
