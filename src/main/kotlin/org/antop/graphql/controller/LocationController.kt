package org.antop.graphql.controller

import org.antop.graphql.service.LocationService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class LocationController(private val locationService: LocationService) {
    @QueryMapping
    fun getLocationById(@Argument id: Int) = locationService.getLocation(id)

    @QueryMapping
    fun getLocations() = locationService.getLocations()

    @QueryMapping
    fun getLocationsBy(
        @Argument streetAddress: String?,
        @Argument postalCode: String?,
        @Argument city: String?,
        @Argument stateProvince: String?
    ) =
        locationService.getLocations(streetAddress, postalCode, city, stateProvince)
}
