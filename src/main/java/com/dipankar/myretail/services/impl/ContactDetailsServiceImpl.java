package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.ContactDetails;
import com.dipankar.myretail.data.repositories.ContactDetailsRepository;
import com.dipankar.myretail.services.ContactDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactDetailsServiceImpl implements ContactDetailsService {

    @Autowired
    private ContactDetailsRepository contactDetailsRepository;

    @Override
    public List<ContactDetails> list() {
        return contactDetailsRepository.findAll();
    }

    @Override
    public ContactDetails create(ContactDetails item) {
        return contactDetailsRepository.save(item);
    }

    @Override
    public ContactDetails update(ContactDetails item) {
        return contactDetailsRepository.save(item);
    }

    @Override
    public <S extends ContactDetails> Iterable<S> saveAll(Iterable<S> items) {
        return contactDetailsRepository.saveAll(items);
    }

    @Override
    public Optional<ContactDetails> getById(Long id) {
        return contactDetailsRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        contactDetailsRepository.deleteById(id);
    }

    @Override
    public void delete(ContactDetails item) {
        contactDetailsRepository.delete(item);
    }
}
