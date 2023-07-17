package org.antop.graphql.model

import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.IntIdTable

class Location(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<Location>(Locations)

    var streetAddress by Locations.streetAddress
    var postalCode by Locations.postalCode
    var city by Locations.city
    var stateProvince by Locations.stateProvince
    var country by Country referencedOn Locations.country

    override fun toString(): String {
        return "Location(streetAddress='$streetAddress', postalCode='$postalCode', city='$city', stateProvince='$stateProvince')"
    }
}

object Locations : IntIdTable("locations", "location_id") {
    val streetAddress = varchar("street_address", 40).nullable()
    val postalCode = varchar("postal_code", 12).nullable()
    val city = varchar("city", 30)
    val stateProvince = varchar("state_province", 25).nullable()
    val country = reference("country_id", Countries)
}
