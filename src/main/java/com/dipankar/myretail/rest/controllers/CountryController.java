package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.Country;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
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

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@RequestBody @Valid Country country) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(country);
        countryService.create(country);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public void update(@RequestBody @Valid Country country) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(country);
        countryService.update(country);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(@RequestBody @Valid Country country) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(country);
        countryService.delete(country);
    }


}
