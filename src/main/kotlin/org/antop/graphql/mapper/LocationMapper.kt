package org.antop.graphql.mapper

import org.antop.graphql.dto.LocationDto
import org.antop.graphql.model.Location
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper(uses = [CountryMapper::class, RegionMapper::class])
interface LocationMapper : Converter<Location, LocationDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Location): LocationDto
}
