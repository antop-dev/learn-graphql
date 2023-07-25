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

### Matstruct mapper 순환참조

부서와 사원의 관계가 순환참조가 발생하는 데이터 구조다.

사원ID가 `201`인 사원은 마케팅(`201`) 팀에 속해 잇으면서 매니저다.

![](https://i.imgur.com/hyu3gnA.png)

StackOverflow 정도를 예상 했지만 Mapstruct 구현체가 서로를 주입하게 되면서 순환참조 에러가 발생한다.

```text
***************************
APPLICATION FAILED TO START
***************************

Description:

The dependencies of some of the beans in the application context form a cycle:

   departmentController defined in file [learn-graphql/build/classes/kotlin/main/org/antop/graphql/controller/DepartmentController.class]
      ↓
   departmentService defined in file [learn-graphql/build/classes/kotlin/main/org/antop/graphql/service/DepartmentService.class]
┌─────┐
|  departmentMapperImpl (field private org.antop.graphql.mapper.EmployeeMapper org.antop.graphql.mapper.DepartmentMapperImpl.employeeMapper)
↑     ↓
|  employeeMapperImpl (field private org.antop.graphql.mapper.DepartmentMapper org.antop.graphql.mapper.EmployeeMapperImpl.departmentMapper)
└─────┘
```

해결방법(?)으로는 부서에서 매니저로 가는 참조를 제거하고, 부사의 매니저를 조회하는 API를 별도로 제공한다.
