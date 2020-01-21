package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@Table(name = "countries")
public class Country implements Serializable {

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

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
            name = "country_state_city_map",
            joinColumns = {@JoinColumn(name = "country", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "state", referencedColumnName = "id")}
    )
    private List<State> state;
}
