package com.dipankar.myretail.data.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.*;

@EqualsAndHashCode(callSuper = true)
@Data
@SuperBuilder
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "states")
public class State extends BaseEntity {

    @Column(name = "code")
    @NotEmpty(message = "State code is required")
    @Size(min = 2, max = 20, message = "State code should be between 2 and 20 characters")
    @JsonIgnore
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "State name is required")
    @Size(min = 2, max = 120, message = "State name should be between 2 and 120 characters")
    private String name;

    @OneToMany(
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL
    )
    @JoinTable(
            name = "country_state_city_map",
            joinColumns = @JoinColumn(name = "state", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "city", referencedColumnName = "id")
    )
    private Set<City> cities;


}
