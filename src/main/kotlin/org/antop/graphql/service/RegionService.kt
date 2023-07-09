package org.antop.graphql.service

import org.antop.graphql.model.Region
import org.antop.graphql.model.Regions
import org.jetbrains.exposed.sql.lowerCase
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class RegionService {
    fun getRegions() = Region.all().toList()

    fun getRegionById(id: Long) = Region.findById(id)

    fun getRegions(name: String) = Region.find {
        Regions.name.lowerCase() like "%${name.lowercase()}%"
    }.toList()

}
