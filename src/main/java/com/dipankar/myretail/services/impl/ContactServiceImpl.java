package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.City;
import com.dipankar.myretail.data.entities.Contact;
import com.dipankar.myretail.data.entities.Country;
import com.dipankar.myretail.data.entities.State;
import com.dipankar.myretail.data.repositories.CityRepository;
import com.dipankar.myretail.data.repositories.ContactsRepository;
import com.dipankar.myretail.data.repositories.CountryRepository;
import com.dipankar.myretail.data.repositories.StateRepository;
import com.dipankar.myretail.exceptions.BadClientDataException;
import com.dipankar.myretail.rest.dto.ContactDTO;
import com.dipankar.myretail.services.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactsRepository contactsRepository;

    @Autowired
    private CountryRepository countryRepository;

    @Autowired
    private StateRepository stateRepository;

    @Autowired
    private CityRepository cityRepository;


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

    @Override
    public Contact updateDTO(ContactDTO dto) {
        Contact contact = contactsRepository.getOne(dto.getId());
        contact.setPrimaryContactNumber(dto.getPrimaryContactNumber());
        contact.setSecondaryContactNumber(dto.getSecondaryContactNumber());
        contact.setAddressLine1(dto.getAddressLine1());
        contact.setAddressLine2(dto.getAddressLine2());
        contact.setEmail(dto.getEmail());
        contact.setPostalCode(dto.getPostalCode());
        contact.setIsPrimary(dto.getIsPrimary());
        if (contact.getCountry().getId() != dto.getCountryId()) {
           contact.setCountry(getSavedCountry(dto.getCountryId()));
        }
        if (contact.getState().getId() != dto.getStateId()) {
            contact.setState(getSavedState(dto.getStateId()));
        }
        if (contact.getCity().getId() != dto.getCityId()) {
            contact.setCity(getSavedCity(dto.getCityId()));
        }
        return contactsRepository.save(contact);
    }

    private Country getSavedCountry(Long countryId) {
        if (countryId == null) {
            throw new BadClientDataException("Country information is mandatory.");
        }
        Country country = countryRepository.getOne(countryId);
        if (country == null) {
            throw new BadClientDataException("Invalid country information provided.");
        }
        return country;
    }

    private State getSavedState(Long stateId) {
        if (stateId == null) {
            throw new BadClientDataException("State information is mandatory.");
        }
        State state = stateRepository.getOne(stateId);
        if (state == null) {
            throw new BadClientDataException("Invalid state information provided.");
        }
        return state;
    }

    private City getSavedCity(Long cityId) {
        if (cityId == null) {
            throw new BadClientDataException("City information is mandatory.");
        }
        City city = cityRepository.getOne(cityId);
        if (city == null) {
            throw new BadClientDataException("Invalid city information provided.");
        }
        return city;
    }
}
