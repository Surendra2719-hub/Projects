package com.app.surendra.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.app.surendra.entity.Book;
import com.app.surendra.service.BookService;

@Controller
public class BookController {

    @Autowired
    private BookService service;

    // Home Page
    @GetMapping("/")
    public String home() {
        return "index";
    }

    // Add Book Page Open
    @GetMapping("/addBook")
    public String addBookPage() {
        return "addBook";
    }

    // Save Book
    @PostMapping("/saveBook")
    public String saveBook(Book book) {
        service.saveBook(book);
        return "redirect:/viewBook";
    }

    // View All Books
    @GetMapping("/viewBook")
    public String viewBooks(Model model) {

        model.addAttribute("books", service.getAllBooks());

        return "viewBook";
    }

    // Open Update Page
    @GetMapping("/editBook/{id}")
    public String editBook(@PathVariable Long id, Model model) {

        Book book = service.getBookById(id);

        model.addAttribute("book", book);

        return "updateBook";
    }

    // Update Book
    @PostMapping("/updateBook")
    public String updateBook(Book book) {

        service.saveBook(book);

        return "redirect:/viewBook";
    }

    // Delete Book
    @GetMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable Long id) {

        service.deleteBook(id);

        return "redirect:/viewBook";
    }

}