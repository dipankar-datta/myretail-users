package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.State;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface StateRepository extends JpaRepository<State, Long> {
}
