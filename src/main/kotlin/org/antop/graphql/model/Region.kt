package org.antop.graphql.model

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

class Region(id: EntityID<Long>) : LongEntity(id) {
    companion object : LongEntityClass<Region>(Regions)

    var name by Regions.name
    // 1:N
    val countries by Country referrersOn Countries.region

    override fun toString(): String {
        return "Region(id='$id', name='$name')"
    }

}

object Regions : LongIdTable("regions", "region_id") {
    val name = varchar("region_name", 25)
}
