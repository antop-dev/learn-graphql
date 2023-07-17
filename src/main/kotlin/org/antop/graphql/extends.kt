package org.antop.graphql

import org.jetbrains.exposed.sql.Expression
import org.jetbrains.exposed.sql.SqlExpressionBuilder.like
import org.jetbrains.exposed.sql.lowerCase
import org.slf4j.LoggerFactory

inline fun <reified T> T.logger() = LoggerFactory.getLogger(T::class.java)!!

/**
 * 컬럼명.소문자 like '%' + 문자열.소문자 + '%'
 */
infix fun <T : String?> Expression<T>.fullLike(s: String) = this.lowerCase() like "%" + s.lowercase() + "%"
