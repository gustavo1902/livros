package com.example.livros.controller;

import com.example.livros.model.Author;
import com.example.livros.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/authors")
public class AuthorController {

    private final AuthorService authorService;

    @Autowired
    public AuthorController(AuthorService authorService) {
        this.authorService = authorService;
    }

    @GetMapping
    public String listAuthors(Model model) {
        List<Author> authors = authorService.getAllAuthors();
        model.addAttribute("authors", authors);
        return "author/author-list";
    }

    @GetMapping("/add")
    public String showAddAuthorForm(Model model) {
        model.addAttribute("author", new Author());
        return "author/author-form";
    }

    @PostMapping("/add")
    public String addAuthor(@ModelAttribute("author") Author author) {
        authorService.saveAuthor(author);
        return "redirect:/authors";
    }

    @GetMapping("/edit/{id}")
    public String showEditAuthorForm(@PathVariable Long id, Model model) {
        Author author = authorService.getAuthorById(id);
        model.addAttribute("author", author);
        return "author/author-form";
    }

    @PostMapping("/edit/{id}")
    public String editAuthor(@PathVariable Long id, @ModelAttribute("author") Author author) {
        author.setId(id);
        authorService.saveAuthor(author);
        return "redirect:/authors";
    }

    @GetMapping("/delete/{id}")
    public String deleteAuthor(@PathVariable Long id) {
        authorService.deleteAuthor(id);
        return "redirect:/authors";
    }

    @GetMapping("/view/{id}")
    public String viewAuthor(@PathVariable Long id, Model model) {
        Author author = authorService.getAuthorById(id);
        model.addAttribute("author", author);
        return "author/author-view";
    }
}
