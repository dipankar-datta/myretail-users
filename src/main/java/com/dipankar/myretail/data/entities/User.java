package com.dipankar.myretail.data.entities;

import lombok.*;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
@SuperBuilder
public class User extends BaseEntity {

    @Column(name = "first_name")
    @NotEmpty(message = "User first name is required")
    @Size(min = 2, max = 80, message = "User first name should be between 2 to 80 characters")
    private String firstName;

    @Column(name = "last_name")
    @NotEmpty(message = "User last name is required")
    @Size(min = 2, max = 80, message = "User last name should be between 2 to 80 characters")
    private String lastName;

    @OneToOne
    @JoinColumn(name = "role")
    @NotNull(message = "User role is required")
    private Role role;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    @NotEmpty(message = "User's contact details is required")
    private List<Contact> contacts;
}
