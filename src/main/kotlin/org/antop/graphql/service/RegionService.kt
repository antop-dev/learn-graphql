package org.antop.graphql.service

import org.antop.graphql.dto.RegionDto
import org.antop.graphql.fullLike
import org.antop.graphql.mapper.RegionMapper
import org.antop.graphql.model.Region
import org.antop.graphql.model.Regions
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class RegionService(private val regionMapper: RegionMapper) {
    fun getRegion(id: Long) = Region.findById(id)?.let { toDto(it) }

    fun getRegions() = Region.all().map { toDto(it) }

    fun getRegions(name: String) = Region.find {
        Regions.name fullLike name
    }.map {
        toDto(it)
    }

    private fun toDto(region: Region): RegionDto = regionMapper.convert(region)

}
