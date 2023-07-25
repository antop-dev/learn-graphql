package org.antop.graphql.mapper

import org.antop.graphql.dto.EmployeeDto
import org.antop.graphql.model.Employee
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper(uses = [DepartmentMapper::class, JobMapper::class])
interface EmployeeMapper : Converter<Employee, EmployeeDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Employee): EmployeeDto
}
