package com.github.heliommsfilho.springauthserver.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloRestController {

    @GetMapping("root")
    public String helloRoot() {
        return "Hello Root";
    }

    @GetMapping("admin")
    public String helloAdmin() {
        return "Hello Admin";
    }

    @GetMapping("operator")
    public String helloOperator() {
        return "Hello Operator";
    }
}
