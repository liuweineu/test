package org.dyq.demo.service;

import java.util.List;

import org.dyq.demo.vo.Book;
import org.dyq.demo.vo.Category;

public interface BookService {
	List<Category> getAllCategories();
	Category getCategory(int id);
	List<Book> getAllBooks();
	Book save(Book book);
	Book update(Book book);
	Book get(long id);
	long getNextId();
	
}
