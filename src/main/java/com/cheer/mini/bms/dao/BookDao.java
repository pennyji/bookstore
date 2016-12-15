package com.cheer.mini.bms.dao;

import java.util.List;

import com.cheer.mini.bms.model.Book;

public interface BookDao {
	
	public List<Book> getHotBooks();
	
	public Book findById(String bookid);
	
	public List<Book> findLatestBook();
	
	public List<Book> findDiscountBook();
	
	public List<Book> findByAuthor(String author);

}
