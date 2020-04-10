package com.dipankar.myretail.services;

import com.dipankar.myretail.data.entities.Contact;
import com.dipankar.myretail.rest.dto.ContactDTO;

public interface ContactService extends BasicCrudService<Contact> {
    Contact updateDTO(ContactDTO contactDTO);
}
