package com.example.city.demo.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(CityNotFoundException.class)
    public Map<String,Object> cityNotFoundExceptionHandler(CityNotFoundException ex){
        return errorMap(
                ex.getMessage(),
                HttpStatus.NOT_FOUND
        );
    }


    private Map<String,Object> errorMap(String msg,HttpStatus httpStatus){
        Map<String, Object> error = new HashMap<>();
        error.put("timestamp", LocalDateTime.now());
        error.put("status", httpStatus.value());
        error.put("error", httpStatus.getReasonPhrase());
        error.put("message", msg);
        return error;
    }
}
