package com.ersin.todolistback.dao;

import java.util.List;

import com.ersin.todolistback.dto.ToDoList;

public interface ToDoListDAO {
	
	List<ToDoList> list();
	
	ToDoList get(int id);
	
	boolean add(ToDoList toDoList);
	boolean update(ToDoList toDoList);
	boolean delete(ToDoList toDoList);
}
