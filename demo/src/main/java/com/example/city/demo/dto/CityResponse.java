package com.example.city.demo.dto;

import java.util.UUID;

public record CityResponse(UUID cityId,String cityName,int population,int totalFamilies) { }
