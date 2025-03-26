package com.example.chickenstock.controller;

import com.example.chickenstock.model.dto.Account;
import com.example.chickenstock.model.repository.AccountRepository;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
public class MainController {
    final AccountRepository accountRepository;

    public MainController(AccountRepository accountRepository) {
        this.accountRepository = accountRepository;
    }


    @GetMapping
    public String root(Model model) throws Exception{
        List<Account> accounts = accountRepository.findAll();
        model.addAttribute("accounts", accounts);
        return "main";
    }

    @PostMapping
    public String save(@ModelAttribute Account account) throws Exception {
        accountRepository.save(account);
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") long id) throws Exception {
        accountRepository.delete(id);
        return "redirect:/";
    }
}
