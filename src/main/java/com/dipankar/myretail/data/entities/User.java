package com.dipankar.myretail.data.entities;

import org.springframework.web.bind.annotation.Mapping;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.Set;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

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
    @NotEmpty(message = "User role is required")
    private Role role;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "updation_time")
    private LocalDateTime updationTime;

    @OneToMany
    @JoinTable(
            name = "user_contact",
            joinColumns = {@JoinColumn(name = "user")},
            inverseJoinColumns = {@JoinColumn(name = "contact")}
            )
    private Set<ContactDetails> contactDetails;
}
