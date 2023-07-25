package org.antop.graphql.dto

import java.math.BigDecimal
import java.time.LocalDate

data class EmployeeDto(
    val id: Long,
    val firstName: String?,
    val lastName: String,
    val email: String,
    val phoneNumber: String?,
    val hireDate: LocalDate,
    val job: JobDto,
    val salary: BigDecimal,
    val commissionPct: Double?,
    val manager: EmployeeDto?,
    val department: DepartmentDto?
)
