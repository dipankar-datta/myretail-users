package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.List;

@Data
@Entity
@Table(name = "countries")
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "Country code is required")
    @Size(min = 2, max = 20, message = "Country code should be between 2 and 20 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "Country name is required")
    @Size(min = 2, max = 120, message = "Country name should be between 2 and 120 characters")
    private String name;

    @ManyToMany
    @JoinTable(
            name = "country_state_map",
            joinColumns = {@JoinColumn(name = "country")},
            inverseJoinColumns = {@JoinColumn(name = "state")}
    )
    private List<State> state;
}
