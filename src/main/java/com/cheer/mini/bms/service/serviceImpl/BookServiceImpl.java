package com.cheer.mini.bms.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cheer.mini.bms.dao.BookDao;
import com.cheer.mini.bms.model.Book;
import com.cheer.mini.bms.service.BookService;


@Service("bookServiceImpl")
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDao bookDao;
	@Override
	public List<Book> getHotBooks() {
		
		return bookDao.getHotBooks();
	}

}
