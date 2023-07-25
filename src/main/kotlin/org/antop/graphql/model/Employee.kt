package org.antop.graphql.model

import org.jetbrains.exposed.dao.LongEntity
import org.jetbrains.exposed.dao.LongEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import org.jetbrains.exposed.dao.id.LongIdTable
import org.jetbrains.exposed.sql.javatime.date

class Employee(id: EntityID<Long>) : LongEntity(id) {
    companion object : LongEntityClass<Employee>(Employees)

    var firstName by Employees.firstName
    var lastName by Employees.lastName
    var email by Employees.email
    var phoneNumber by Employees.phoneNumber
    var hireDate by Employees.hireDate
    var job by Job referencedOn Employees.job
    var salary by Employees.salary
    var commissionPct by Employees.commissionPct
    var manager by Employee optionalReferencedOn Employees.manager
    var department by Department optionalReferencedOn Employees.department
}

object Employees : LongIdTable("employees", "employee_id") {
    val firstName = varchar("first_name", 20).nullable()
    val lastName = varchar("last_name", 25)
    val email = varchar("email", 25)
    val phoneNumber = varchar("phone_number", 20).nullable()
    val hireDate = date("hire_date")
    val job = reference("job_id", Jobs)
    val salary = decimal("salary", 8, 2)
    val commissionPct = double("commission_pct").nullable()
    val manager = reference("manager_id", Employees).nullable()
    val department = reference("department_id", Departments).nullable()
}
