package com.app.surendra.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.app.surendra.entity.Book;
import com.app.surendra.repository.BookRepository;


@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository repository;

    // Save Book
    @Override
    public Book saveBook(Book book) {
        return repository.save(book);
    }

    // Get All Books
    @Override
    public List<Book> getAllBooks() {
        return repository.findAll();
    }

    // Get Book By Id
    @Override
    public Book getBookById(Long id) {
        return repository.findById(id).orElse(null);
    }

    // Delete Book
    @Override
    public void deleteBook(Long id) {
        repository.deleteById(id);
    }

}
