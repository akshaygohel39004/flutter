package com.example.city.demo.entities;

import lombok.*;

import java.util.UUID;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class City {

    private UUID cityId;
    private String cityName;
    private int population;
    private int totalFamilies;

}
