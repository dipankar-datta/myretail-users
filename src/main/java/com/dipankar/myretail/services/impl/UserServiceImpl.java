package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.data.repositories.UserRepository;
import com.dipankar.myretail.services.RoleService;
import com.dipankar.myretail.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class UserServiceImpl  implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleService roleService;


    @Override
    public Set<User> list() {
        return userRepository.list();
    }

    @Override
    public User save(User item) {
        return userRepository.save(item);
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
