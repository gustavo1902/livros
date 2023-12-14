package com.example.livros.service;

public interface AuthorService {
    Author saveAuthor(Author author);
    List<Author> getAllAuthors();
    Author getAuthorById(Long id);
    void deleteAuthor(Long id);
}
