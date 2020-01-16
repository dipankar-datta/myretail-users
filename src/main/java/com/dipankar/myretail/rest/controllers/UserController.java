package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.ContactDetails;
import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.rest.dto.ContactDetailsDTO;
import com.dipankar.myretail.rest.dto.UserDTO;
import com.dipankar.myretail.services.ContactDetailsService;
import com.dipankar.myretail.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ContactDetailsService contactDetailsService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<UserDTO> usersList() {
        return userService.list()
                .stream()
                .map(UserDTO::entityToDto)
                .collect(Collectors.toList());
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public UserDTO getUser(@PathVariable Long id) {
        Optional<User> userOptional = userService.getById(id);
        return userOptional.isPresent() ? UserDTO.entityToDto(userOptional.get()) : null;
    }

    @PostMapping(consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = {MediaType.APPLICATION_JSON_VALUE})
    @ResponseStatus(HttpStatus.OK)
    public UserDTO createUser(@Valid @RequestBody UserDTO dto) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(dto.getId());
        return userService.create(dto);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public UserDTO updateUser(@Valid @RequestBody UserDTO dto) {
        return userService.update(dto);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteUser(@PathVariable Long id) {
        userService.deleteById(id);
    }

    @GetMapping("/{userId}/contacts")
    @ResponseStatus(HttpStatus.OK)
    public List<ContactDetailsDTO> getUserContacts(@PathVariable Long userId) {
        Optional<User> userOptional = userService.getById(userId);
        return userOptional.isPresent() ?
                userOptional
                        .get()
                        .getContactDetails()
                        .stream()
                        .map(ContactDetailsDTO::entityToDto)
                        .collect(Collectors.toList())
                : null;
    }

    @PutMapping("/{userId}/contacts")
    @ResponseStatus(HttpStatus.OK)
    public ContactDetailsDTO updateUserContacts(@PathVariable Long userId, @RequestBody ContactDetailsDTO contactDetailsDTO) {
        contactDetailsDTO.setId(userId);
        ContactDetails contactDetails = contactDetailsService.update(contactDetailsDTO.toEntity());
       return ContactDetailsDTO.entityToDto(contactDetails);
    }

    @PostMapping("/{userId}/contacts")
    @ResponseStatus(HttpStatus.OK)
    public ContactDetailsDTO createUserContact(@PathVariable Long userId, @RequestBody ContactDetailsDTO contactDetailsDTO) {
        contactDetailsDTO.setId(userId);
        ContactDetails contactDetails = contactDetailsService.create(contactDetailsDTO.toEntity());
        return ContactDetailsDTO.entityToDto(contactDetails);
    }
}
