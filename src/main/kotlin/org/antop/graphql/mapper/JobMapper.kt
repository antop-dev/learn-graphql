package org.antop.graphql.mapper

import org.antop.graphql.dto.JobDto
import org.antop.graphql.model.Job
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper
interface JobMapper : Converter<Job, JobDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Job): JobDto
}
