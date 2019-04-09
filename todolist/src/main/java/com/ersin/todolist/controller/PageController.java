package com.ersin.todolist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ersin.todolistback.dao.ToDoItemDAO;
import com.ersin.todolistback.dao.ToDoListDAO;
import com.ersin.todolistback.dto.ToDoList;

@RestController
public class PageController {
	
	@Autowired
	private ToDoListDAO toDoListDAO;
	
	@Autowired
	private ToDoItemDAO toDoItemDAO;
	
	@RequestMapping(value = {"/","/home","/index"})
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Home");	
		mv.addObject("lists",toDoListDAO.list());
		mv.addObject("userClickHome", true);
		
		return mv;
	}
	
	@RequestMapping(value = {"/createList"})
	public ModelAndView createList(){
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "CreateList");
		mv.addObject("userClickCreateList", true);
		return mv;
	}
	
	@RequestMapping(value = "myList/{id}/toDoItems")
	public ModelAndView showtoDoItems(@PathVariable("id") int id){
		ModelAndView mv = new ModelAndView("page");
		
		ToDoList mylist = null;	
		
		mylist = toDoListDAO.get(id);
			
		mv.addObject("title", mylist.getTitle());	
		mv.addObject("lists",toDoListDAO.list());
		mv.addObject("mylist",mylist);
		mv.addObject("userClickListItems", true);
		
		return mv;
	}
}
