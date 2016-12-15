package com.cheer.mini.bms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cheer.mini.bms.model.Book;
import com.cheer.mini.bms.service.serviceImpl.BookServiceImpl;

@Controller
@RequestMapping("bms/book")
public class BookController {
	
	@Autowired
	private BookServiceImpl bookServiceImpl;
	
	@RequestMapping("/showIndex")
	public ModelAndView showIndex(){
		List<Book> hotBooks = bookServiceImpl.getHotBooks();
		ModelAndView mv = new ModelAndView();
		mv.addObject("hotBooks", hotBooks);
		mv.setViewName("common/index");
		
		return mv;
		
	}

}
