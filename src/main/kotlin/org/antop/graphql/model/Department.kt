package org.antop.graphql.model

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable

class Department(id: EntityID<Long>) : LongEntity(id) {
    companion object : LongEntityClass<Department>(Departments)

    var name by Departments.name
    var manager by Employee optionalReferencedOn Departments.manager
    var location by Location referencedOn Departments.location

    override fun toString(): String {
        return "Department(id='$id', name='$name')"
    }
}

object Departments : LongIdTable("departments", "department_id") {
    val name = varchar("department_name", 30)
    val manager = reference("manager_id", Employees).nullable()
    val location = reference("location_id", Locations)
}
