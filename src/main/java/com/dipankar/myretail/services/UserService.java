package com.dipankar.myretail.services;

import com.dipankar.myretail.data.entities.User;
import com.dipankar.myretail.rest.dto.UserDTO;

public interface UserService extends BasicCrudService<User> {

    User create(UserDTO dto);

    User update(UserDTO dto);


}
