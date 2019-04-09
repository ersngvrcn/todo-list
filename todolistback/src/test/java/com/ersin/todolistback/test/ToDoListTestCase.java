package com.ersin.todolistback.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ersin.todolistback.dao.ToDoListDAO;
import com.ersin.todolistback.dto.ToDoList;

public class ToDoListTestCase {

	private static AnnotationConfigApplicationContext context;

	private static ToDoListDAO toDoListDAO;

	private static ToDoList toDoList;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.ersin.todolistback");
		context.refresh();

		toDoListDAO = (ToDoListDAO) context.getBean("toDoListDAO");
	}

	@Test
	public void testCRUDToDoList() {

		// adding toDoList
		toDoList = new ToDoList();

		toDoList.setUserId(1);
		toDoList.setTitle("My CRUD Test ToDoList2");
		toDoList.setDescription("This is my CRUD test toDoList1");

		assertEquals("Successfully added a toDoList into table!", true, toDoListDAO.add(toDoList));

		toDoList = new ToDoList();

		toDoList.setUserId(1);
		toDoList.setTitle("My CRUD Test ToDoList3");
		toDoList.setDescription("This is my CRUD test toDoList2");

		assertEquals("Successfully added a toDoList into table!", true, toDoListDAO.add(toDoList));

		// fetching and updating toDoList
		toDoList = toDoListDAO.get(1);
		toDoList.setTitle("CRUD Test");
		toDoList.setDescription("This is CRUD update test");

		assertEquals("Successfully updated a toDoList in table!", true, toDoListDAO.update(toDoList));

		// deleting toDoList
		toDoList = toDoListDAO.get(7);

		assertEquals("Successfully deleted a toDoList from table!", true, toDoListDAO.delete(toDoList));

		// listing toDoLists
		assertEquals("Successfully fetched a list of toDoLists from table!",6, toDoListDAO.list().size());
	}

}
