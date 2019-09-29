package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "Role code is required")
    @Size(min = 2, max = 10, message = "Role code should be between 2 and 10 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "Role name is required")
    @Size(min = 2, max = 160, message = "Role name should be between 2 and 160 characters")
    private String name;
}
