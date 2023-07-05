package org.antop.graphql.model

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

class Region(id: EntityID<Long>) : LongEntity(id) {
    companion object: LongEntityClass<Region>(Regions)
    var name by Regions.name
}

object Regions : LongIdTable("regions", "region_id") {
    val name = varchar("region_name", 25)
}
