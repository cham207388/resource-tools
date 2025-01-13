# Gradle

## Installation

```bash
brew install gradle
```

## dependency management locally

- $HOME/.gradle/caches

## daemon

- `gradle --stop` stop the daemon
- `gradle --daemon` start the daemon
- `gradle --status` show the status of the daemon
- `gradle build --daemon` use the daemon

## build.gradle file

- Configuration (dependencies)
  - `implementation` main dependencies
  - `api` main dependencies
  - `testImplementation` test dependencies
  - `compileOnly` compile only dependencies (not available in runtime)
  - `runtimeOnly` runtime only dependencies (not available in compile time)
  - `annotationProcessor` annotation processor dependencies
  - `testRuntimeOnly` test runtime only dependencies

- Build phases
  - `initialization` initialize the project
  - `configuration` configure the project
  - `execution` execute the project

- repositories: location from where to pull/download dependencies
  - `mavenCentral()`
  - `mavenLocal()`
  - `maven { url 'https://repo.spring.io/release' }`
  - `maven { url 'https://repo.spring.io/milestone' }`
  - `maven { url 'https://repo.spring.io/snapshot' }`

- configurations
  - `compileOnly` compile only dependencies

- plugins
  - `id 'java' version '1.8.0' apply false`
- tasks
  - `test {
        useJUnitPlatform()
      }`

## Commands

| Command               | Description           | Example              |
|-----------------------|-----------------------|----------------------|
| `gradle tasks --all`  | Lists all tasks.      | `gradle tasks --all` |
| `gradle build`        | Builds the project.   | `gradle build`       |
| `gradle clean`        | Cleans the project.   | `gradle clean`       |
| `gradle test`         | Runs the tests.       | `gradle test`        |
| `gradle run`          | Runs the application. | `gradle run`         |

## ~/.gradle/gradle.properties file

- `org.gradle.logging.level=info` to set the logging level
- `org.gradle.logging.level=debug` to set the logging level
- `org.gradle.logging.level=error` to set the logging level
- `org.gradle.logging.level=warn` to set the logging level

## Gradle objects

- project
  - methods
    - repositories
    - dependencies
    - application
  - properties
    - name
    - version
    - description
    - group
    - search for gradle properties to see more

- task

### Writing new tasks

```groovy
task.register('prod') {
    doFirst {
        println 'Runs in configuration phase'
    }
    doLast {
        println 'Runs in execution phase'
    }
}
```

### Depends on

```groovy
prod.dependsOn('dev') // prod task depends on dev task
prod.finalizedBy('cleanUp') // prod task is finalized by cleanUp task
```
