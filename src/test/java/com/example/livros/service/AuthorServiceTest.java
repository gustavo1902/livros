package com.example.livros.service;

import com.example.livros.model.Author;
import com.example.livros.repository.AuthorRepository;
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

class AuthorServiceTest {

    @Mock
    private AuthorRepository authorRepository;

    @InjectMocks
    private AuthorService authorService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getAllAuthors() {
        List<Author> authors = Arrays.asList(
                new Author(1L, "John", "Doe", "American"),
                new Author(2L, "Jane", "Doe", "British")
        );
        when(authorRepository.findAll()).thenReturn(authors);
        List<Author> result = authorService.getAllAuthors();
        assertEquals(2, result.size());
    }

    @Test
    void getAuthorById() {
        Author author = new Author(1L, "John", "Doe", "American");
        when(authorRepository.findById(1L)).thenReturn(Optional.of(author));
        Optional<Author> result = authorService.getAuthorById(1L);
        assertEquals(author, result.orElse(null));
    }

}
