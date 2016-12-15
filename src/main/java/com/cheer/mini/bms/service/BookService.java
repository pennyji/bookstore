package com.cheer.mini.bms.service;

import java.util.List;

import com.cheer.mini.bms.model.Book;


public interface BookService {
	
	public List<Book> getHotBooks();
	
	public List<Book> getNewBooks();
	
	public List<Book> getDiscount();
	
	public Book findById(String bookId);
	
	public List<Book> findByAuthor(String author);
	
	

}
