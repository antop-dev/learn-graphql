package org.antop.graphql.controller

import org.antop.graphql.dto.EmployeeDto
import org.antop.graphql.service.EmployeeService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class EmployeeController(private val employeeService: EmployeeService) {
    @QueryMapping
    fun getEmployeeById(@Argument id: Long) = employeeService.getEmployee(id)

    @QueryMapping
    fun getEmployees() = employeeService.getEmployees()

    @QueryMapping
    fun getManagerOfDepartment(@Argument departmentId: Long) = employeeService.getEmployeeByDepartment(departmentId)

    /**
     * [offset], [limit]를 이용한 전통적인 페이징
     */
    @QueryMapping
    fun employees(@Argument offset: Long?, @Argument limit: Int?): List<EmployeeDto> {
        return employeeService.getEmployees(offset ?: 0, limit ?: 10)
    }

}
