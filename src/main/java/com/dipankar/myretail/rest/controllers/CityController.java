package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.City;
import com.dipankar.myretail.exceptions.ExceptionsUtility;
import com.dipankar.myretail.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("cities")
public class CityController {

    @Autowired
    private CityService cityService;


    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<City> list() {
        return cityService.list();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.OK)
    public void create(@RequestBody @Valid City city) {
        ExceptionsUtility.exceptionIfIdExistsForCreate(city);
        cityService.create(city);
    }

    @PutMapping
    @ResponseStatus(HttpStatus.OK)
    public void update(@RequestBody @Valid City city) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(city);
        cityService.update(city);
    }

    @DeleteMapping
    @ResponseStatus(HttpStatus.OK)
    public void delete(@RequestBody @Valid City city) {
        ExceptionsUtility.exceptionIfIdDoesntExistForUpdate(city);
        cityService.delete(city);
    }

}
