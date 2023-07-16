package org.antop.graphql.mapper

import org.antop.graphql.dto.RegionDto
import org.antop.graphql.model.Region
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper
interface RegionMapper : Converter<Region, RegionDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Region): RegionDto
}
