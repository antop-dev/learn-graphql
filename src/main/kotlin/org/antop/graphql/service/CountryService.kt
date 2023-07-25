package org.antop.graphql.service

import org.antop.graphql.fullLike
import org.antop.graphql.mapper.CountryMapper
import org.antop.graphql.model.Countries
import org.antop.graphql.model.Country
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class CountryService(private val countryMapper: CountryMapper) {

    fun getCountry(id: String) = Country.findById(id)?.let { toDto(it) }

    fun getCountries() = Country.all().map { toDto(it) }

    fun getCountries(name: String) = Country.find {
        Countries.name fullLike name
    }.map {
        toDto(it)
    }

    private fun toDto(country: Country) = countryMapper.convert(country)

}
