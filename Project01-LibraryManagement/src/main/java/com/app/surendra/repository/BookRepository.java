package com.app.surendra.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.surendra.entity.Book;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

}
