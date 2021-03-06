package com.lookers.api.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND, reason = "Test Drive Not Found")
public class TestDriveNotFoundException extends RuntimeException {

}
