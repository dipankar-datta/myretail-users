package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.City;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface CityRepository extends CrudRepository<City, Long> {

    @Query("select c from City c")
    Set<City> list();
}
