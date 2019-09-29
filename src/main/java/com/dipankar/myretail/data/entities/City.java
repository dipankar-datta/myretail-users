package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@Entity
@Table(name = "cities")
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "City code is required")
    @Size(min = 2, max = 20, message = "City code should be between 2 and 20 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "City name is required")
    @Size(min = 2, max = 120, message = "City name should be between 2 and 120 characters")
    private String name;
}