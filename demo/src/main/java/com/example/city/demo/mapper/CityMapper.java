package com.example.city.demo.mapper;

import com.example.city.demo.dto.CityResponse;
import com.example.city.demo.entities.City;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper(componentModel = "spring")
public interface CityMapper {

    @Mapping(target = "cityId", source = "cityId")
    CityResponse toCityResponse(City city);

    List<CityResponse> toCityResponseList(List<City> cities);
}

