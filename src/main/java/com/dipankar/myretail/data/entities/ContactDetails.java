package com.dipankar.myretail.data.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Data
@AllArgsConstructor
@Entity
@Table(name = "contact_details")
@JsonIgnoreProperties(ignoreUnknown = true)
public class ContactDetails implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("id")
    private Long id;

    @Column(name = "primary_contact")
    @NotEmpty(message = "Primary contact is required")
    @Size(min = 8, max = 30, message = "Primary contact should be between 8 to 30 characters")
    @JsonProperty("primaryContact")
    private String primaryContact;

    @Column(name = "secondary_contact")
    @Size(min = 8, max = 30, message = "Secondary contact should be between 8 to 30 characters")
    @JsonProperty("secondaryContact")
    private String secondaryContact;

    @Column(name = "email")
    @NotEmpty(message = "Email is required")
    @Size(min = 8, max = 30, message = "Email should be between 8 to 30 characters")
    @Email(message = "Please provide valid email")
    @JsonProperty("email")
    private String email;

    @Column(name = "address_line_1")
    @NotEmpty(message = "Address is required")
    @Size(min = 10, max = 200, message = "Address line should be between 10 and 200 characters")
    @JsonProperty("addressLine1")
    private String addressLine1;

    @Column(name = "address_line_2")
    @Size(min = 1, max = 200, message = "Address line should be maximum 200 characters")
    @JsonProperty("addressLine2")
    private String addressLine2;

    @Column(name = "postal_code")
    @NotEmpty(message = "Postal code is required")
    @Size(min = 6, max = 30, message = "Postal code should be between 6 and 30 characters")
    @JsonProperty("postalCode")
    private String postalCode;

    @OneToOne
    @JoinColumn(name = "country")
    @JsonProperty("country")
    private Country country;

    @OneToOne
    @JoinColumn(name = "state")
    private State state;

    @OneToOne
    @JoinColumn(name = "city")
    private City city;

    @ManyToOne
    @JoinColumn(name = "user")
    private User user;

    @Column(name = "is_primary")
    private String isPrimary;
}
