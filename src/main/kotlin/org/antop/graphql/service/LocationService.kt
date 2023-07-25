package org.antop.graphql.service

import org.antop.graphql.dto.LocationDto
import org.antop.graphql.fullLike
import org.antop.graphql.mapper.LocationMapper
import org.antop.graphql.model.Location
import org.antop.graphql.model.Locations
import org.jetbrains.exposed.sql.andWhere
import org.jetbrains.exposed.sql.selectAll
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class LocationService(private val locationMapper: LocationMapper) {

    fun getLocation(id: Int) = Location.findById(id)?.let { toDto(it) }

    fun getLocations() = Location.all().map { toDto(it) }

    fun getLocations(
        streetAddress: String?,
        postalCode: String?,
        city: String?,
        stateProvince: String?
    ) = Locations.selectAll().apply {
        streetAddress?.let { andWhere { Locations.streetAddress fullLike it } }
        postalCode?.let { andWhere { Locations.postalCode fullLike it } }
        city?.let { andWhere { Locations.city fullLike it } }
        stateProvince?.let { andWhere { Locations.stateProvince fullLike it } }
    }.map {
        toDto(Location.wrapRow(it))
    }

    private fun toDto(location: Location): LocationDto = locationMapper.convert(location)

}
