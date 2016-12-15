package com.cheer.mini.bms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cheer.mini.bms.model.Book;
import com.cheer.mini.bms.service.serviceImpl.BookServiceImpl;

@Controller
@RequestMapping("bms/book")
public class BookController {
	
	@Autowired
	private BookServiceImpl bookServiceImpl;
	
	@RequestMapping("/showIndex")
	public ModelAndView showIndex(HttpServletRequest request){
		HttpSession session = request.getSession();
		List<Book> hotBooks = bookServiceImpl.getHotBooks();
		List<Book> latestBooks = bookServiceImpl.findLatestBook();
		List<Book> discountBooks = bookServiceImpl.findDiscountBook();
		ModelAndView mv = new ModelAndView();
		session.setAttribute("discountBooks", discountBooks);
		mv.addObject("hotBooks", hotBooks);
		mv.addObject("latestBooks", latestBooks);
		mv.setViewName("common/index");
		
		return mv;
		
	}
	@RequestMapping("/findById")
	public ModelAndView findById(@RequestParam("bookid") String bookid){
		Book book = bookServiceImpl.findById(bookid);
		ModelAndView mv = new ModelAndView("book/details");
		mv.addObject("book", book);
		return mv;
	}
	
	@RequestMapping("/findByAuthor")
	public ModelAndView findByAuthor(@RequestParam("author") String author){
		List<Book> books = bookServiceImpl.findByAuthor(author);
		ModelAndView mv = new ModelAndView("book/category");
		mv.addObject("books", books);
		return mv;
	}

}
