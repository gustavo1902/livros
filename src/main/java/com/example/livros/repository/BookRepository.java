package com.example.livros.repository;

import com.example.livros.model.Author;
import com.example.livros.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {
    List<Book> findByAuthor(Author author);
}
