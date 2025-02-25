package com.polarbookshop.catalogservice.domain;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;


import jakarta.validation.ConstraintViolation;
import jakarta.validation.Validation;
import jakarta.validation.Validator;
import jakarta.validation.ValidatorFactory;


import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
class BookValidationTests {
  private static Validator validator;

  @BeforeAll
  static void setUp() {
    ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
    validator = (Validator) factory.getValidator();
  }

  @Test
  void whenAllFieldsCorrectThenValidationSucceeds() {
    Book book;
    System.out.println("teest...");
    book = Book.of("1234567890", "Title", "Author", 9.90, "Polarsophia");
    Set<ConstraintViolation<Book>> violations = validator.validate(book);
    assertThat(violations).isEmpty();
  }

  @Test
  void whenIsbnNotDefinedThenValidationFails() {
    var book = Book.of("", "Title", "Author", 9.90, "Polarsophia");
    Set<ConstraintViolation<Book>> violations = validator.validate(book);
    assertThat(violations).hasSize(2);
    List<String> constraintViolationMessages = violations.stream()
      .map(ConstraintViolation::getMessage).collect(Collectors.toList());
    assertThat(constraintViolationMessages)
      .contains("The book ISBN must be defined.")
      .contains("The ISBN format must be valid.");
  }
}
