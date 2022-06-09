# Test notes

- [Code changes](#code-changes)
- [Test Command](#test-command)
- [Test results](#test-results)
- [Test failures and solutions](#test-failures-and-solutions)

## Code changes

1. Kafka version: `3.2.1-SNAPSHOT` → `3.2.1-TDP-0.1.0-SNAPSHOT`

## Test Command

```bash
./gradlew cleanTest test
```

## Test results

| Package                            | Tests     | Failures | Skipped | Success rate |
| ---------------------------------- | --------- | -------- | ------- | ------------ |
| kafka-clients                      | 6970      | 0        | 63      | 100%         |
| kafka-connect-api                  | 279       | 0        | 0       | 100%         |
| kafka-connect-basic-auth-extention | 15        | 0        | 0       | 100%         |
| kafka-connect-file                 | 19        | 0        | 0       | 100%         |
| kafka-connect-json                 | 75        | 0        | 0       | 100%         |
| kafka-connect-mirror               | 78        | 0        | 0       | 100%         |
| kafka-core                         | 3910      | 0        | 15      | 99%          |
| kafka-generator                    | 49        | 0        | 0       | 100%         |
| kafka-log4j-appender               | 10        | 0        | 0       | 100%         |
| kafka-metadata                     | 277       | 0        | 0       | 100%         |
| kafka-raft                         | 357       | 0        | 0       | 100%         |
| kafka-server-common                | 15        | 0        | 0       | 100%         |
| kafka-shell                        | 29        | 0        | 0       | 100%         |
| kafka-storage                      | 39        | 0        | 0       | 100%         |
| kafka-streams                      | 5229      | 0        | 1       | 99%          |
| kafka-tools                        | 41        | 0        | 0       | 100%         |
| kafka-trogdor                      | 88        | 0        | 0       | 100%         |
| **Total**                          | **17480** | **0**    | **79**  | **99.55%**   |

## Test failures and solutions

**Note:** Failed tests were rerun individually and all passed. The failures were probably caused by performance issues as tests are run in parallel by default.
