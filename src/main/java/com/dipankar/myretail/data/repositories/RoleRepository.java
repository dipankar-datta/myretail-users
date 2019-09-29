package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Role;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {

    @Query("select r from Role r")
    Set<Role> list();
}
