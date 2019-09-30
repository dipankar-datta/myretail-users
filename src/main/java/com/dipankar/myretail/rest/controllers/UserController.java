package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.rest.dto.UserDTO;
import com.dipankar.myretail.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<UserDTO> list() {
        return userService.list()
                .stream()
                .map(UserDTO::entityToDto)
                .collect(Collectors.toList());
    }

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
    @ResponseStatus(HttpStatus.OK)
    public User create(@Valid @RequestBody UserDTO dto) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(dto.getId());
        return userService.create(dto);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public User update(@Valid @RequestBody UserDTO dto) {
        return userService.update(dto);
    }
}
