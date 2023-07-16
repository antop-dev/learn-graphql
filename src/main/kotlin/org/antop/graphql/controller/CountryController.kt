package org.antop.graphql.controller

import org.antop.graphql.service.CountryService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class CountryController(private val countryService: CountryService) {
    @QueryMapping
    fun getCountryById(@Argument id: String) = countryService.getCountry(id)

    @QueryMapping
    fun getCountries() = countryService.getCountries()

    @QueryMapping
    fun getCountriesByName(@Argument name: String) = countryService.getCountries(name)
}
