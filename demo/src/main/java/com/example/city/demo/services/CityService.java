package com.example.city.demo.services;

import com.example.city.demo.dto.CityResponse;

import java.util.List;
import java.util.UUID;

public interface CityService {

    List<CityResponse> getAllCities();

    CityResponse getCityById(UUID id);
}
