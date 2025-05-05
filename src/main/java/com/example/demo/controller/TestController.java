package com.example.demo.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/test")
public class TestController {

    @GetMapping("/public")
    public String publicEndpoint() {
        return "This is a public endpoint. No authentication required.";
    }

    @GetMapping("/user")
    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    public String userEndpoint() {
        return "Hello USER! You have access to this endpoint.";
    }

    @GetMapping("/admin")
    @PreAuthorize("hasRole('ADMIN')")
    public String adminEndpoint() {
        return "Hello ADMIN! You have access to this endpoint.";
    }

    @GetMapping("/authenticated")
    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    public String authenticatedEndpoint() {
        return "You are authenticated!";
    }
}

