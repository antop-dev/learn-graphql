package org.antop.graphql.mapper

import org.antop.graphql.dto.CountryDto
import org.antop.graphql.model.Country
import org.mapstruct.Mapper
import org.mapstruct.Mapping
import org.springframework.core.convert.converter.Converter

@Mapper(uses = [RegionMapper::class])
interface CountryMapper : Converter<Country, CountryDto> {
    @Mapping(source = "id.value", target = "id")
    override fun convert(source: Country): CountryDto
}
