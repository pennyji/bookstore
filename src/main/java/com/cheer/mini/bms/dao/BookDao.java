package com.cheer.mini.bms.dao;

import java.util.List;

import com.cheer.mini.bms.model.Book;

public interface BookDao {
	
	public List<Book> getHotBooks();
	

	public List<Book> getNewBooks();
	
	public List<Book> getDiscount();
	
	public Book findById(String bookid);
	
	public List<Book> findByAuthor(String author);

}
