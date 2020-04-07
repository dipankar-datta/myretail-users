package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Contact;
import com.dipankar.myretail.data.repositories.ContactsRepository;
import com.dipankar.myretail.services.ContactDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactServiceImpl implements ContactDetailsService {

    @Autowired
    private ContactsRepository contactsRepository;

    @Override
    public List<Contact> list() {
        return contactsRepository.findAll();
    }

    @Override
    public Contact create(Contact item) {
        return contactsRepository.save(item);
    }

    @Override
    public Contact update(Contact item) {
        return contactsRepository.save(item);
    }

    @Override
    public <S extends Contact> Iterable<S> saveAll(Iterable<S> items) {
        return contactsRepository.saveAll(items);
    }

    @Override
    public Optional<Contact> getById(Long id) {
        return contactsRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        contactsRepository.deleteById(id);
    }

    @Override
    public void delete(Contact item) {
        contactsRepository.delete(item);
    }
}
