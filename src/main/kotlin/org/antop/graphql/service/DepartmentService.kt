package org.antop.graphql.service

import graphql.relay.*
import org.antop.graphql.dto.DepartmentDto
import org.antop.graphql.fullLike
import org.antop.graphql.mapper.DepartmentMapper
import org.antop.graphql.model.Department
import org.antop.graphql.model.Departments
import org.apache.commons.codec.binary.Base64
import org.jetbrains.exposed.sql.Op
import org.jetbrains.exposed.sql.andWhere
import org.jetbrains.exposed.sql.selectAll
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class DepartmentService(private val departmentMapper: DepartmentMapper) {

    fun getDepartment(id: Long) = Department.findById(id)?.let { toDto(it) }

    fun getDepartments() = Department.all().map { toDto(it) }

    fun getDepartments(name: String) = Department.find {
        Departments.name fullLike name
    }.map { toDto(it) }

    fun getDepartments(limit: Int, after: String?, before: String?): Connection<DepartmentDto> {
        val query = Departments.selectAll()
        after?.let { v -> query.andWhere { Departments.id greater v.decodeBase64().toLong() } }
        before?.let { v -> query.andWhere { Departments.id less v.decodeBase64().toLong() } }

        val departments = query.limit(limit)
            .sortedBy { Departments.id }
            .map { toDto(Department.wrapRow(it)) }

        val first = departments.firstOrNull()
        val last = departments.lastOrNull()

        val hasPreviousPage = when {
            first != null -> Department.count(Op.build { Departments.id less first.id }) > 0
            else -> false
        }

        val hasNextPage = when {
            last != null -> Department.count(Op.build { Departments.id less last.id }) > 0
            else -> false
        }

        return DefaultConnection(
            departments.map { DefaultEdge(it, it.id.toCursor()) },
            DefaultPageInfo(
                departments.firstOrNull()?.id.toCursor(),
                departments.lastOrNull()?.id.toCursor(),
                hasPreviousPage,
                hasNextPage
            )
        )
    }

    private fun toDto(department: Department) = departmentMapper.convert(department)
}

private fun String?.decodeBase64() = this?.let { String(Base64.decodeBase64(it)) } ?: ""

private fun Any?.encodeBase64() = this?.let { Base64.encodeBase64String(it.toString().toByteArray()) } ?: ""

private fun Any?.toCursor() = this?.let { DefaultConnectionCursor(it.toString().encodeBase64()) }
