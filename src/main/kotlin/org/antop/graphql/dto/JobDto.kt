package org.antop.graphql.dto

import java.math.BigDecimal

data class JobDto(
    val id: String,
    val title: String,
    val minSalary: BigDecimal,
    val maxSalary: BigDecimal
)
