package org.antop.graphql.controller

import org.antop.graphql.service.DepartmentService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class DepartmentController(private val departmentService: DepartmentService) {
    @QueryMapping
    fun getDepartmentById(@Argument id: Long) = departmentService.getDepartment(id)

    @QueryMapping
    fun getDepartments() = departmentService.getDepartments()

    @QueryMapping
    fun getDepartmentsByName(@Argument name: String) = departmentService.getDepartments(name)
}
