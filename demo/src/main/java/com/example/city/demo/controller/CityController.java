package com.example.city.demo.controller;


import com.example.city.demo.dto.CityResponse;
import com.example.city.demo.entities.City;
import com.example.city.demo.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("api/cities")
public class CityController {

    @Autowired
    private CityService cityService;

    @GetMapping()
    public ResponseEntity<List<CityResponse>> getAllCities() {
        List<CityResponse> cities =cityService.getAllCities();
        return ResponseEntity.ok(cities);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CityResponse> getCityById(@PathVariable UUID id){
        CityResponse city=cityService.getCityById(id);
        return ResponseEntity.ok(city);
    }

}
