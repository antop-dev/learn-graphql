package org.antop.graphql.dto

data class CountryDto(
    val id: String,
    val name: String,
    val region: RegionDto
)
