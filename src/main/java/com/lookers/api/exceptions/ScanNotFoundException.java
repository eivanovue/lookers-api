package com.lookers.api.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND, reason = "Scan Not Found")
public class ScanNotFoundException extends RuntimeException {

}
