package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.State;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface StateRepository extends CrudRepository<State, Long> {

    @Query("select s from State s")
    Set<State> list();
}
