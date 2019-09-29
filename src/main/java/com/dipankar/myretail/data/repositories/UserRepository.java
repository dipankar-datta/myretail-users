package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    @Query("select u from User u")
    Set<User> list();
}
