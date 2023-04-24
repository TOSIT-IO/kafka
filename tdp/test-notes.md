# Test notes

- [Code changes](#code-changes)
- [Test Command](#test-command)
- [Test results](#test-results)
- [Test failures and solutions](#test-failures-and-solutions)

## Code changes

1. Kafka version: `2.8.2-SNAPSHOT` → `2.8.2-0.0-SNAPSHOT`

## Test Command

```bash
./gradlew cleanTest test
```

## Test results

| Package                            | Tests     | Failures | Ignored | Success rate |
| ---------------------------------- | --------- | -------- | ------- | ------------ |
| kafka-clients                      | 6203      | 0        | 85      | 99%          |
| kafka-connect-api                  | 279       | 0        | 0       | 100%         |
| kafka-connect-basic-auth-extention | 15        | 0        | 0       | 100%         |
| kafka-connect-file                 | 19        | 0        | 0       | 100%         |
| kafka-connect-json                 | 75        | 0        | 0       | 100%         |
| kafka-connect-mirror               | 71        | 0        | 0       | 100%         |
| kafka-connect-runtime              | 817       | 0        | 1       | 100%         |
| kafka-connect-transforms           | 145       | 0        | 1       | 100%         |
| kafka-core                         | 3445      | 0        | 8       | 99%          |
| kafka-generator                    | 49        | 0        | 0       | 100%         |
| kafka-log4j-appender               | 10        | 0        | 0       | 100%         |
| kafka-metadata                     | 101       | 0        | 0       | 100%         |
| kafka-raft                         | 312       | 0        | 0       | 100%         |
| kafka-server-common                | 15        | 0        | 0       | 100%         |
| kafka-shell                        | 20        | 0        | 0       | 100%         |
| kafka-storage                      | 39        | 0        | 0       | 100%         |
| kafka-streams                      | 4494      | 0        | 1       | 99%          |
| kafka-streams-streams-scala        | 73        | 0        | 1       | 99%          |
| kafka-streams-examples             | 11        | 0        | 1       | 99%          |
| kafka-streams-test-utils           | 318       | 0        | 1       | 99%          |
| kafka-tools                        | 95        | 0        | 0       | 100%         |
| kafka-trogdor                      | 88        | 0        | 0       | 100%         |
| **Total**                          | **16694** | **0**    | **99**  | **99.41%**   |

## Test failures and solutions

**Note:** Failed tests were rerun individually and all passed. The failures were probably caused by performance issues as tests are run in parallel by default.
