package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.City;
import com.dipankar.myretail.data.entities.Role;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/roles")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Role> list() {
        return roleService.list();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@RequestBody @Valid Role role) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(role.getId());
        roleService.create(role);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public void update(@RequestBody @Valid Role role) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(role.getId());
        roleService.update(role);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(@RequestBody @Valid Role role) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(role);
        roleService.delete(role);
    }
}
