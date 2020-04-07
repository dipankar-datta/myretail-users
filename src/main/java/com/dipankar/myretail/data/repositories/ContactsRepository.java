package com.dipankar.myretail.data.repositories;

import com.dipankar.myretail.data.entities.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactsRepository extends JpaRepository<Contact, Long> {
}
