package org.antop.graphql.service

import org.antop.graphql.fullLike
import org.antop.graphql.mapper.RegionMapper
import org.antop.graphql.model.Region
import org.antop.graphql.model.Regions
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class RegionService(
    val regionMapper: RegionMapper
) {
    fun getRegion(id: Long) = Region.findById(id)?.let { regionMapper.convert(it) }

    fun getRegions() = Region.all().map { regionMapper.convert(it) }

    fun getRegions(name: String) = Region.find {
        Regions.name fullLike name
    }.map {
        regionMapper.convert(it)
    }

}
