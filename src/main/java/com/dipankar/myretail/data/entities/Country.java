package com.dipankar.myretail.data.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.Set;

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "countries")
@SuperBuilder
public class Country extends BaseEntity {

    @Column(name = "code")
    @NotEmpty(message = "Country code is required")
    @Size(min = 2, max = 20, message = "Country code should be between 2 and 20 characters")
    @JsonIgnore
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
    private Set<State> states;
}
