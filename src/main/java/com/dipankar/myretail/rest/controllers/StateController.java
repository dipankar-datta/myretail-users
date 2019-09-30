package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.State;
import com.dipankar.myretail.services.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

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
}
