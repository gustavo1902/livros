package com.example.livros.repository;

public interface BookRepository extends JpaRepository<Book, Long> {
    List<Book> findByAuthor(Author author);
}
