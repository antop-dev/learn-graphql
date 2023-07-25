package org.antop.graphql.service

import org.antop.graphql.fullLike
import org.antop.graphql.mapper.DepartmentMapper
import org.antop.graphql.model.Department
import org.antop.graphql.model.Departments
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class DepartmentService(private val departmentMapper: DepartmentMapper) {

    fun getDepartment(id: Long) = Department.findById(id)?.let { toDto(it) }

    fun getDepartments() = Department.all().map { toDto(it) }

    fun getDepartments(name: String) = Department.find {
        Departments.name fullLike name
    }.map { toDto(it) }

    private fun toDto(department: Department) = departmentMapper.convert(department)

}
