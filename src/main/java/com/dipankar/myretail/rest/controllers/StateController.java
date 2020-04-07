package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Role;
import com.dipankar.myretail.data.entities.State;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/states")
public class StateController {

    @Autowired
    private StateService stateService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<State> list() {
        return stateService.list();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@RequestBody @Valid State state) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(state.getId());
        stateService.create(state);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public void update(@RequestBody @Valid State state) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(state.getId());
        stateService.update(state);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(@RequestBody @Valid State state) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(state);
        stateService.delete(state);
    }
}
