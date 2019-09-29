package com.dipankar.myretail.data.entities;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.Set;

@Data
@Entity
@Table(name = "states")
public class State {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code")
    @NotEmpty(message = "State code is required")
    @Size(min = 2, max = 20, message = "State code should be between 2 and 20 characters")
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "State name is required")
    @Size(min = 2, max = 120, message = "State name should be between 2 and 120 characters")
    private String name;

    @ManyToMany
    @JoinTable(
            name = "state_city_map",
            joinColumns = {@JoinColumn(name = "state")},
            inverseJoinColumns = {@JoinColumn(name = "city")}
    )
    private Set<City> cities;
}
