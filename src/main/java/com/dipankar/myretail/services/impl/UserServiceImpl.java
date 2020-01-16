package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.*;
import com.dipankar.myretail.data.repositories.*;
import com.dipankar.myretail.rest.dto.UserDTO;
import com.dipankar.myretail.services.RoleService;
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
    private ContactDetailsRepository contactDetailsRepository;


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
        user.setCreationTime(LocalDateTime.now());
        user.setUpdationTime(LocalDateTime.now());

        List<ContactDetails> savedContacts =
                dto.getContacts()
                    .stream()
                    .map(contactDetailsDTO -> {
                    ContactDetails contactDetails = contactDetailsDTO.toEntity();
                    contactDetails.setCountry(countryRepository.getOne(contactDetailsDTO.getCountryId()));
                    contactDetails.setState(stateRepository.getOne(contactDetailsDTO.getStateId()));
                    contactDetails.setCity(cityRepository.getOne(contactDetailsDTO.getCityId()));
                    contactDetails.setIsPrimary(
                            contactDetailsDTO.getIsPrimary() == null ? "f" : contactDetailsDTO.getIsPrimary()
                    );
                    return contactDetails;
                }).collect(Collectors.toList());
        user.setContactDetails(savedContacts);
        return UserDTO.entityToDto(userRepository.save(user));
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
