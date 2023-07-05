package org.antop.graphql.controller

import org.antop.graphql.model.Region
import org.antop.graphql.service.RegionService
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class RegionController(private val regionService: RegionService) {
    @QueryMapping
    fun getRegions(): List<Region> = regionService.getRegions()
}
