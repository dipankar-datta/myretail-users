package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Country;
import com.dipankar.myretail.data.repositories.CountryRepository;
import com.dipankar.myretail.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class CountryServiceImpl implements CountryService {

    @Autowired
    private CountryRepository countryRepository;

    @Override
    public List<Country> list() {
        return countryRepository.findAll();
    }

    @Override
    public Country create(Country item) {
        return countryRepository.save(item);
    }

    @Override
    public Country update(Country item) {
        return countryRepository.save(item);
    }

    @Override
    public <S extends Country> Iterable<S> saveAll(Iterable<S> items) {
        return countryRepository.saveAll(items);
    }

    @Override
    public Optional<Country> getById(Long id) {
        return countryRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        countryRepository.deleteById(id);
    }

    @Override
    public void delete(Country item) {
        countryRepository.delete(item);
    }
}
