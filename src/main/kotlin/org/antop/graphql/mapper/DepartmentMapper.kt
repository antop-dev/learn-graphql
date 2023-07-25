package org.antop.graphql.mapper

import org.antop.graphql.dto.DepartmentDto
import org.antop.graphql.model.Department
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper(uses = [LocationMapper::class])
interface DepartmentMapper : Converter<Department, DepartmentDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Department): DepartmentDto
}
