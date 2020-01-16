package com.dipankar.myretail.data.entities;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "cities")
public class City implements Serializable {

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

    @Column(name = "created_by")
    @NotNull(message = "Created by field is required")
   // @OneToOne
   // @JoinColumn(name = "created_by")
    private User createdBy;

    @Column(name = "updated_by")
    @NotNull(message = "Updated by field is required")
   // @OneToOne
   // @JoinColumn(name = "updated_by")
    private User updatedBy;

    @Column(name = "creation_time")
    private LocalDateTime creationTime;

    @Column(name = "updation_time")
    private LocalDateTime updationTime;


}
