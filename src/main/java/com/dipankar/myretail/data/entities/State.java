package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.*;

@Data
@Entity
@Table(name = "states")
public class State implements Serializable {



    @Id
    @Column(name = "id")
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

    @NotNull(message = "Created by field is required")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "created_by")
    private User createdBy;

    @NotNull(message = "Updated by field is required")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "updated_by")
    private User updatedBy;

    @Column(name = "creation_time")
    private Date creationTime;

    @Column(name = "updation_time")
    private Date updationTime;

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
