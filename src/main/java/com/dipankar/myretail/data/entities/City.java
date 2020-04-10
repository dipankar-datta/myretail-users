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

@EqualsAndHashCode(callSuper = true)
@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@Entity
@Table(name = "cities")
public class City extends BaseEntity {

    @Column(name = "code")
    @NotEmpty(message = "City code is required")
    @Size(min = 2, max = 20, message = "City code should be between 2 and 20 characters")
    @JsonIgnore
    private String code;

    @Column(name = "name")
    @NotEmpty(message = "City name is required")
    @Size(min = 2, max = 120, message = "City name should be between 2 and 120 characters")
    private String name;
}
