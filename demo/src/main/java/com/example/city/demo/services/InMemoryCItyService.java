package com.example.city.demo.services;

import com.example.city.demo.dto.CityResponse;
import com.example.city.demo.entities.City;
import com.example.city.demo.exceptions.CityNotFoundException;
import com.example.city.demo.mapper.CityMapper;
import lombok.RequiredArgsConstructor;
import org.mapstruct.Mapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
@Service
@RequiredArgsConstructor
public class InMemoryCItyService implements CityService{


    private final CityMapper cityMapper;
    List<City> cities = List.of(
            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Mumbai")
                    .population(20400000)
                    .totalFamilies(4500000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Delhi")
                    .population(19000000)
                    .totalFamilies(4200000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Bengaluru")
                    .population(12400000)
                    .totalFamilies(2800000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Hyderabad")
                    .population(10000000)
                    .totalFamilies(2300000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Chennai")
                    .population(11300000)
                    .totalFamilies(2600000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Kolkata")
                    .population(14800000)
                    .totalFamilies(3100000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Pune")
                    .population(7500000)
                    .totalFamilies(1700000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Ahmedabad")
                    .population(8200000)
                    .totalFamilies(1900000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Jaipur")
                    .population(4000000)
                    .totalFamilies(900000)
                    .build(),

            City.builder()
                    .cityId(UUID.randomUUID())
                    .cityName("Surat")
                    .population(6500000)
                    .totalFamilies(1500000)
                    .build()
    );

    @Override
    public List<CityResponse> getAllCities() {

        List<CityResponse> cityResponses=cityMapper.toCityResponseList(cities);
        return cityResponses;
    }

    @Override
    public CityResponse getCityById(UUID id) {
        City city=cities.stream().filter((c)-> {
            return c.getCityId().equals(id);
        }).findFirst().orElseThrow(() ->{throw new CityNotFoundException("city not found");});
        return cityMapper.toCityResponse(city);
    }
}
