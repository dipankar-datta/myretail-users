package com.dipankar.myretail.configs;

import com.dipankar.myretail.exceptions.CustomException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;

import javax.persistence.EntityNotFoundException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@ControllerAdvice
public class CustomRestExceptionHandler {

    @ExceptionHandler(EmptyResultDataAccessException.class)
    public final ResponseEntity<Object> emptyResultDataAccessExceptionHandler(
            EmptyResultDataAccessException ex, WebRequest request) {
        return new ResponseEntity("Resource not found", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(CustomException.class)
    public final ResponseEntity<Object> emptyResultDataAccessExceptionHandler(
            CustomException ex, WebRequest request) {
        return new ResponseEntity(ex.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(javax.validation.ConstraintViolationException.class)
    public final ResponseEntity<Object> constraintViolationExceptionHandler(
            javax.validation.ConstraintViolationException ex, WebRequest request) {
        List<String> errorMessages =
                ex.getConstraintViolations()
                        .stream()
                        .map(constraintViolation -> constraintViolation.getMessage())
                        .collect(Collectors.toList());
        ErrorResponse errorResponse = new ErrorResponse("Validation Failed", errorMessages);
        return new ResponseEntity(errorResponse, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(org.hibernate.exception.ConstraintViolationException.class)
    public final ResponseEntity<Object> jpaConstraintViolationExceptionHandler(
            org.hibernate.exception.ConstraintViolationException ex, WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse("Data Error",
                Arrays.asList("Invalid data. Please verify your data."));
        return new ResponseEntity(errorResponse, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public final ResponseEntity<Object> methodArgumentNotValidExceptionHandler(MethodArgumentNotValidException ex,
                                                                               WebRequest request) {
        List<String> errorMessages =
                ex.getBindingResult()
                        .getFieldErrors()
                        .stream()
                        .map(constraintViolation -> constraintViolation.getDefaultMessage())
                        .collect(Collectors.toList());
        ErrorResponse errorResponse = new ErrorResponse("Validation Error", errorMessages);
        return new ResponseEntity(errorResponse, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(EntityNotFoundException.class)
    public final ResponseEntity<Object> entityNotFoundExceptionHandler(EntityNotFoundException ex,
                                                                               WebRequest request) {
        ErrorResponse errorResponse = new ErrorResponse("Data Error",
                Arrays.asList("Requested data not available"));
        return new ResponseEntity(errorResponse, HttpStatus.NOT_FOUND);
    }

}
