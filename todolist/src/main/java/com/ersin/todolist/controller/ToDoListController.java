package com.ersin.todolist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ersin.todolistback.dao.ToDoListDAO;
import com.ersin.todolistback.dto.ToDoList;

@RestController
@RequestMapping(value="/createlist")
public class ToDoListController {
	
	@Autowired
	private ToDoListDAO toDoListDAO;
	
	@RequestMapping(value = "/createList",method=RequestMethod.GET)
	public ModelAndView createList(){
		ModelAndView mv = new ModelAndView("page");
		
		ToDoList nList = new ToDoList();
		nList.setUserId(1);
		mv.addObject("title", "CreateList");
		mv.addObject("userClickCreateList", true);
		mv.addObject("toDoList",nList);
		return mv;
	}
	
	@RequestMapping(value = "/createList", method=RequestMethod.POST)
	public String addToDoList(@ModelAttribute("toDoList") ToDoList mtoDoList){
		toDoListDAO.add(mtoDoList);
		
		return "redirect:/createlist";
	}
}
