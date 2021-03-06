package com.dipankar.myretail.rest.dto;

import com.dipankar.myretail.data.entities.Role;
import com.dipankar.myretail.data.entities.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class UserDTO implements Serializable {

    @JsonProperty("id")
    private Long id;

    @NotEmpty(message = "User first name is required")
    @Size(min = 2, max = 80, message = "User first name should be between 2 to 80 characters")
    @JsonProperty("firstName")
    private String firstName;

    @Column(name = "last_name")
    @NotEmpty(message = "User last name is required")
    @Size(min = 2, max = 80, message = "User last name should be between 2 to 80 characters")
    @JsonProperty("lastName")
    private String lastName;

    @NotNull(message = "User role is required")
    @JsonProperty("roleId")
    private Long roleId;

    @NotEmpty(message = "User's contact details is required")
    @JsonProperty("contacts")
    private List<ContactDTO> contacts;

    public static UserDTO entityToDto(User u) {
        return new UserDTO(
                u.getId(),
                u.getFirstName(),
                u.getLastName(),
                u.getRole().getId(),
                u.getContacts().stream().map(ContactDTO::entityToDto).collect(Collectors.toList())
        );
    }

    public User toEntity() {
        return User.builder()
                .id(id)
                .firstName(firstName)
                .lastName(lastName)
                .contacts(contacts.stream().map(contactDTO -> contactDTO.toEntity()).collect(Collectors.toList()))
                .role(Role.builder().id(roleId).build())
                .build();
    }
}
