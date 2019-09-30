package com.dipankar.myretail.rest.controllers;

import com.dipankar.myretail.data.entities.City;
import com.dipankar.myretail.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

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
}
