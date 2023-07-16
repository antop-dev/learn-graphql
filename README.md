# learn-graphql

Kotlin + Spring Boot + GraphQL 조합으로 [Oracle Human Resources](https://github.com/oracle-samples/db-sample-schemas) API 제공 개발 연습 프로젝트

* Kotlin 1.8.22
* Spring Boot 3.1.1
* [GraphQL](https://graphql.org/)
* [Exposed 0.41.1](https://github.com/JetBrains/Exposed)
* [Mapstruct 1.5.5](https://mapstruct.org/)
* H2 Database

## Database

![ERD](https://i.imgur.com/ggZ3ViY.png)

## Run

```
./gradlew bootRun
```

http://localhost:8080/graphiql

![graphiql](https://i.imgur.com/3dWPbTE.png)

## Issue

### `ExposedAutoConfiguration`가 동작하지 않음

스프링 부트 3 버전에서는 `org.jetbrains.exposed.spring.autoconfigure.ExposedAutoConfiguration`가 자동으로 동작하지 않는다. (버전은 0.41.1)

아래와 같이 직업 추가하거나 스프링 부트 버전을 2.x로 내리면 된다.

```kotlin
@SpringBootApplication
@Import(ExposedAutoConfiguration::class)
class LearnGraphqlApplication
```
