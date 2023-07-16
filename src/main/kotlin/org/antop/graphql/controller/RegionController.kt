package org.antop.graphql.controller

import org.antop.graphql.service.RegionService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class RegionController(private val regionService: RegionService) {
    @QueryMapping
    fun getRegionById(@Argument id: Long) = regionService.getRegion(id)

    @QueryMapping
    fun getRegions() = regionService.getRegions()

    @QueryMapping
    fun getRegionsByName(@Argument name: String) = regionService.getRegions(name)
}
