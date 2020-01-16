package com.dipankar.myretail.services;

import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.rest.dto.UserDTO;

public interface UserService extends BasicCrudService<User> {

    UserDTO create(UserDTO dto);

    UserDTO update(UserDTO dto);


}
