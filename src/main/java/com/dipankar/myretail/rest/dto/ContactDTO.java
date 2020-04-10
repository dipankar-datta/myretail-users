package com.dipankar.myretail.rest.dto;

import com.dipankar.myretail.data.entities.*;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ContactDTO {

    @JsonProperty("id")
    private Long id;

    @NotEmpty(message = "Primary contact is required")
    @Size(min = 8, max = 30, message = "Primary contact number should be between 8 to 30 characters")
    @JsonProperty("primaryContactNumber")
    private String primaryContactNumber;

    @Size(min = 8, max = 30, message = "Secondary contact number should be between 8 to 30 characters")
    @JsonProperty("secondaryContactNumber")
    private String secondaryContactNumber;

    @NotEmpty(message = "Email is required")
    @Size(min = 8, max = 30, message = "Email should be between 8 to 30 characters")
    @Email(message = "Please provide valid email")
    @JsonProperty("email")
    private String email;

    @NotEmpty(message = "Address is required")
    @Size(min = 10, max = 200, message = "Address line should be between 10 and 200 characters")
    @JsonProperty("addressLine1")
    private String addressLine1;

    @Size(min = 1, max = 200, message = "Address line should be maximum 200 characters")
    @JsonProperty("addressLine2")
    private String addressLine2;

    @NotEmpty(message = "Postal code is required")
    @Size(min = 6, max = 30, message = "Postal code should be between 6 and 30 characters")
    @JsonProperty("postalCode")
    private String postalCode;

    @JsonProperty("country")
    private Long countryId;

    @JsonProperty("state")
    private Long stateId;

    @JsonProperty("city")
    private Long cityId;

    @JsonProperty("isPrimary")
    private String isPrimary;

    @JsonProperty("user")
    private Long userId;

    public Contact toEntity() {

        return Contact.builder()
                .id(id)
                .primaryContactNumber(primaryContactNumber)
                .secondaryContactNumber(secondaryContactNumber)
                .email(email)
                .addressLine1(addressLine1)
                .addressLine2(addressLine2)
                .postalCode(postalCode)
                .country(Country.builder().id(countryId).build())
                .state(State.builder().id(stateId).build())
                .city(City.builder().id(cityId).build())
                .userId(userId)
                .build();
    }

    public static ContactDTO entityToDto(Contact contact) {
        return new ContactDTO(
                contact.getId(),
                contact.getPrimaryContactNumber(),
                contact.getSecondaryContactNumber(),
                contact.getEmail(),
                contact.getAddressLine1(),
                contact.getAddressLine2(),
                contact.getPostalCode(),
                contact.getCountry().getId(),
                contact.getState().getId(),
                contact.getCity().getId(),
                contact.getIsPrimary(),
                contact.getUserId()
        );
    }
}
