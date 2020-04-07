package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.*;
import com.dipankar.myretail.data.repositories.*;
import com.dipankar.myretail.rest.dto.UserDTO;
import com.dipankar.myretail.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl  implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private CountryRepository countryRepository;

    @Autowired
    private StateRepository stateRepository;

    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private ContactsRepository contactsRepository;


    @Override
    public List<User> list() {
        return userRepository.findAll();
    }

    @Override
    public User create(User item) {
        return userRepository.save(item);
    }

    @Override
    public UserDTO create(UserDTO dto) {
        Role role = roleRepository.getOne(dto.getRoleId());
        User user = dto.toEntity();
        user.setRole(role);
        LocalDateTime localDateTime = LocalDateTime.now();
        user.setCreationTime(localDateTime);
        user.setUpdationTime(localDateTime);
        user = userRepository.save(user);

        Long userId = user.getId();
        List<Contact> savedContacts =
                dto.getContacts()
                    .stream()
                    .map(contactDTO -> {
                    Contact contact = contactDTO.toEntity();
                    contact.setCountry(countryRepository.getOne(contactDTO.getCountryId()));
                    contact.setState(stateRepository.getOne(contactDTO.getStateId()));
                    contact.setCity(cityRepository.getOne(contactDTO.getCityId()));
                    contact.setIsPrimary(
                            contactDTO.getIsPrimary() == null ? "false" : contactDTO.getIsPrimary()
                    );
                    contact.setUserId(userId);
                    return contact;
                }).collect(Collectors.toList());
        contactsRepository.saveAll(savedContacts);
        user.setContacts(savedContacts);

        return UserDTO.entityToDto(user);
    }

    @Override
    public User update(User item) {
        return userRepository.save(item);
    }

    @Override
    public UserDTO update(UserDTO dto) {
        return create(dto);
    }

    @Override
    public <S extends User> Iterable<S> saveAll(Iterable<S> items) {
        return userRepository.saveAll(items);
    }

    @Override
    public Optional<User> getById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public void delete(User item) {
        userRepository.delete(item);
    }
}
