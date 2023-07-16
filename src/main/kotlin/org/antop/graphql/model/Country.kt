package org.antop.graphql.model

import org.jetbrains.exposed.dao.Entity
import org.jetbrains.exposed.dao.EntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.IdTable
import org.jetbrains.exposed.sql.Column

class Country(id: EntityID<String>) : Entity<String>(id) {
    companion object : EntityClass<String, Country>(Countries)

    var name by Countries.name
    // N:1
    var region by Region referencedOn Countries.region

    override fun toString(): String {
        return "Country(id='$id', name='$name')"
    }
}

object Countries : IdTable<String>("countries") {
    override val id: Column<EntityID<String>> = varchar("country_id", 2).entityId()
    val name = varchar("country_name", 60)
    val region = reference("region_id", Regions)
}
