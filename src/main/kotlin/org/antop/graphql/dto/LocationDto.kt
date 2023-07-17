package org.antop.graphql.dto

data class LocationDto(
    val id: Int,
    val streetAddress: String?,
    val postalCode: String?,
    val city: String,
    val stateProvince: String?,
    val country: CountryDto
)
