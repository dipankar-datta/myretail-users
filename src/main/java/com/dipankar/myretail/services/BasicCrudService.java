package com.dipankar.myretail.services;

import java.util.Optional;
import java.util.Set;

public interface BasicCrudService<T> {

    Set<T> list();

    T save(T item);

    <S extends T> Iterable<S> saveAll(Iterable<S> items);

    Optional<T> getById(Long id);

    void deleteById(Long id);

    void delete(T item);

}
