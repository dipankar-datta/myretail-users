package com.dipankar.myretail.services.impl;

import com.dipankar.myretail.data.entities.Role;
import com.dipankar.myretail.data.repositories.RoleRepository;
import com.dipankar.myretail.services.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.Set;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Set<Role> list() {
        return roleRepository.list();
    }

    @Override
    public Role save(Role item) {
        return roleRepository.save(item);
    }

    @Override
    public <S extends Role> Iterable<S> saveAll(Iterable<S> items) {
        return roleRepository.saveAll(items);
    }

    @Override
    public Optional<Role> getById(Long id) {
        return roleRepository.findById(id);
    }

    @Override
    public void deleteById(Long id) {
        roleRepository.deleteById(id);
    }

    @Override
    public void delete(Role item) {
        roleRepository.delete(item);
    }
}
