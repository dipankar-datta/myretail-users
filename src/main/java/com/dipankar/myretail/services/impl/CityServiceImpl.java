package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.City;
import com.dipankar.myretail.data.repositories.CityRepository;
import com.dipankar.myretail.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    private CityRepository cityRepository;

    @Override
    public List<City> list() {
        return cityRepository.findAll();
    }

    @Override
    public City create(City item) {
        return cityRepository.save(item);
    }

    @Override
    public City update(City item) {
        return cityRepository.save(item);
    }

    @Override
    public <S extends City> Iterable<S> saveAll(Iterable<S> items) {
        return cityRepository.saveAll(items);
    }

    @Override
    public Optional<City> getById(Long id) {
        return cityRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        cityRepository.deleteById(id);
    }

    @Override
    public void delete(City item) {
        cityRepository.delete(item);
    }
}
