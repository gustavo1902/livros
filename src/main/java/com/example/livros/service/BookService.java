package com.example.livros.service;

public interface BookService {
    Book saveBook(Book book);
    List<Book> getAllBooks();
    Book getBookById(Long id);
    void deleteBook(Long id);
    List<Book> getBooksByAuthor(Author author);
}