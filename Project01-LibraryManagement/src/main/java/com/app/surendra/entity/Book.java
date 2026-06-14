package com.app.surendra.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String bookName;
    private String author;
    private String publisher;
    private Double price;
    private Integer quantity;
    private String category;
}
