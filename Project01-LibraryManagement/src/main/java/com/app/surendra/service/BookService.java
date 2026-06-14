package com.app.surendra.service;

import java.util.List;
import com.app.surendra.entity.Book;

public interface BookService {

    // Save Book
    Book saveBook(Book book);

    // Get All Books
    List<Book> getAllBooks();

    // Get Book By Id
    Book getBookById(Long id);

    // Delete Book
    void deleteBook(Long id);

}
