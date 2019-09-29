package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Country;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface CountryRepository extends CrudRepository<Country, Long> {

    @Query("select c from Country c")
    Set<Country> list();
}
