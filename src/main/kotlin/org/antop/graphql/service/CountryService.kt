package org.antop.graphql.service

import org.antop.graphql.mapper.CountryMapper
import org.antop.graphql.model.Countries
import org.antop.graphql.model.Country
import org.jetbrains.exposed.sql.lowerCase
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class CountryService(val countryMapper: CountryMapper) {

    fun getCountry(id: String) = Country.findById(id)?.let { countryMapper.convert(it) }

    fun getCountries() = Country.all().map { countryMapper.convert(it) }

    fun getCountries(name: String) = Country.find {
        Countries.name.lowerCase() like "%" + name.lowercase() + "%"
    }.map {
        countryMapper.convert(it)
    }
}