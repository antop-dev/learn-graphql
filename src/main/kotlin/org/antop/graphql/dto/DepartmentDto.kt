package org.antop.graphql.dto

data class DepartmentDto(
    val id: Long,
    val name: String,
    val location: LocationDto
)
