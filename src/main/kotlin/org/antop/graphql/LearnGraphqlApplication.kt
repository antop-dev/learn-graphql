package org.antop.graphql

import org.jetbrains.exposed.spring.autoconfigure.ExposedAutoConfiguration
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.context.annotation.Import

@SpringBootApplication
// 스프링 부트 3 버전에서는 정상적으로 자동 실행되지 않음
// 직접 동작하도록 추가
@Import(ExposedAutoConfiguration::class)
class LearnGraphqlApplication

fun main(args: Array<String>) {
    runApplication<LearnGraphqlApplication>(*args)
}
