package com.dipankar.myretail.rest.dto;

import com.dipankar.myretail.data.entities.ContactDetails;
import com.dipankar.myretail.data.entities.User;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Set;

@Data
@AllArgsConstructor
public class UserDTO {

    private String firstName;
    private String lastName;
    private String roleCode;
    private Set<ContactDetails> contacts;

    public static UserDTO convertEntityToDto(User user) {
        return new UserDTO(user.getFirstName(), user.getLastName(), user.getRole().getCode(), user.getContactDetails());
    }
}
