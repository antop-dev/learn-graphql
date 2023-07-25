package org.antop.graphql.service

import org.antop.graphql.mapper.EmployeeMapper
import org.antop.graphql.model.Departments
import org.antop.graphql.model.Employee
import org.antop.graphql.model.Employees
import org.jetbrains.exposed.sql.JoinType
import org.jetbrains.exposed.sql.select
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class EmployeeService(private val employeeMapper: EmployeeMapper) {

    fun getEmployee(id: Long) = Employee.findById(id)?.let { toDto(it) }

    fun getEmployees() = Employee.all().map { toDto(it) }

    fun getEmployeeByDepartment(departmentId: Long) =
        Employees.join(Departments, JoinType.INNER, onColumn = Employees.id, otherColumn = Departments.manager)
            .select { Departments.id eq departmentId }
            .firstNotNullOfOrNull {
                toDto(Employee.wrapRow(it))
            }

    private fun toDto(employee: Employee) = employeeMapper.convert(employee)

}
