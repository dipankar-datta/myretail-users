package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.State;
import com.dipankar.myretail.data.repositories.StateRepository;
import com.dipankar.myretail.services.StateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class StateServiceImpl implements StateService {

    @Autowired
    private StateRepository stateRepository;

    @Override
    public Set<State> list() {
        return stateRepository.list();
    }

    @Override
    public State save(State item) {
        return stateRepository.save(item);
    }

    @Override
    public <S extends State> Iterable<S> saveAll(Iterable<S> items) {
        return stateRepository.saveAll(items);
    }

    @Override
    public Optional<State> getById(Long id) {
        return stateRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        stateRepository.deleteById(id);
    }

    @Override
    public void delete(State item) {
        stateRepository.delete(item);
    }
}
