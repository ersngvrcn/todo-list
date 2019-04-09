package com.ersin.todolist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ersin.todolistback.dao.ToDoItemDAO;
import com.ersin.todolistback.dto.ToDoItem;




@RestController
@RequestMapping("/json/data")
public class ToDoItemJsonController {
	
	@Autowired
	private ToDoItemDAO toItemDAO;
	
	
	@RequestMapping("/all/toDoitems")
	@ResponseBody
	public List<ToDoItem> getAllLists(){
		return toItemDAO.list();
	}
	
	@RequestMapping("/mylist/{id}/toDoitems")
	@ResponseBody
	public List<ToDoItem> getItemByList(@PathVariable("id") int listId){
		return toItemDAO.listItemsByList(listId);
	}
	

}
