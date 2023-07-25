package org.antop.graphql.model

import org.jetbrains.exposed.dao.Entity
import org.jetbrains.exposed.dao.EntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.IdTable
import org.jetbrains.exposed.sql.Column

class Job(id: EntityID<String>) : Entity<String>(id) {
    companion object : EntityClass<String, Job>(Jobs)

    var title by Jobs.title
    var minSalary by Jobs.minSalary
    var maxSalary by Jobs.maxSalary
}

object Jobs : IdTable<String>("jobs") {
    override val id: Column<EntityID<String>> = varchar("job_id", 10).entityId()
    val title = varchar("job_title", 35)
    val minSalary = decimal("min_salary", 15, 0)
    val maxSalary = decimal("max_salary", 15, 0)
}
