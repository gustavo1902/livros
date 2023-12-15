package com.example.livros.service;

import com.example.livros.model.Author;
import com.example.livros.model.Book;
import com.example.livros.repository.BookRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

class BookServiceTest {

    @Mock
    private BookRepository bookRepository;

    @InjectMocks
    private BookService bookService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getAllBooks() {
        List<Book> books = Arrays.asList(
                new Book(1L, "Book 1", 2022, 200, new Author(1L, "John", "Doe", "American")),
                new Book(2L, "Book 2", 2023, 250, new Author(2L, "Jane", "Doe", "British"))
        );
        when(bookRepository.findAll()).thenReturn(books);
        List<Book> result = bookService.getAllBooks();
        assertEquals(2, result.size());
    }

    @Test
    void getBookById() {

        Book book = new Book(1L, "Book 1", 2022, 200, new Author(1L, "John", "Doe", "American"));
        when(bookRepository.findById(1L)).thenReturn(Optional.of(book));
        Optional<Book> result = bookService.getBookById(1L);
        assertEquals(book, result.orElse(null));
    }

}
