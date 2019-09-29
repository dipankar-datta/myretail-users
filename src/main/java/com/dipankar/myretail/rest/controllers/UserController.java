package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Set;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Set<User> list() {
        return userService.list();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public User create(@Valid @RequestBody User user) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(user.getId());
        return userService.save(user);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public User update(@Valid @RequestBody User user) {
        return userService.save(user);
    }
}
