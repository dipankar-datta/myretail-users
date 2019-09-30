package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Country;
import com.dipankar.myretail.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/countries")
public class CountryController {

    @Autowired
    private CountryService countryService;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Country> list() {
        return countryService.list();
    }


}
