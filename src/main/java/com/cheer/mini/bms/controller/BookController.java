package com.cheer.mini.bms.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cheer.mini.base.util.StringUtil;
import com.cheer.mini.bms.model.Book;
import com.cheer.mini.bms.model.Catalog;
import com.cheer.mini.bms.service.serviceImpl.BookServiceImpl;
import com.cheer.mini.bms.service.serviceImpl.CatalogsServiceImpl;

@Controller
@RequestMapping("bms/book")
public class BookController {
	
	@Autowired
	private BookServiceImpl bookServiceImpl;
	@Autowired
	private CatalogsServiceImpl catalogServiceImpl;
	
	@RequestMapping("/showIndex")
	public ModelAndView showIndex(HttpServletRequest request){
		List<Book> hotBooks = bookServiceImpl.getHotBooks();
		List<Book> newBooks = bookServiceImpl.getNewBooks();
		List<Book> disCount = bookServiceImpl.getDiscount();
		List<Catalog> catalogs = catalogServiceImpl.getCatalogs();
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		session.setAttribute("discountBooks", disCount);
		session.setAttribute("catalogs", catalogs);
		mv.addObject("hotBooks", hotBooks);
		mv.addObject("latestBooks", newBooks);
		mv.setViewName("common/index");
		
		return mv;
		
	} 
	

	
	/*@RequestMapping("findByAuthor")
	public ModelAndView findByAuthor(@Param("author")String author) throws UnsupportedEncodingException{
		author = StringUtil.encodeStr(author);
		List<Book> books = bookServiceImpl.findByAuthor(author);
		ModelAndView mv = new ModelAndView("/book/category");
		mv.addObject("books", books);
		return mv;
		
	}*/
	@RequestMapping("findByAuthor")
	public ModelAndView findByAuthor(HttpServletRequest request) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		String author = StringUtil.encodeStr(request.getParameter("author"));
		List<Book> books = bookServiceImpl.findByAuthor(author);
		ModelAndView mv = new ModelAndView("/book/category");
		mv.addObject("books", books);
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
