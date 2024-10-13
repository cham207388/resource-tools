# Kafka Commands

## Create a topic

```bash
docker compose -f docker-compose-topic.yaml up
```

## Login to kafka container

```bash
docker exec -it kafka bash
```

## List topics

```bash
kafka-topics --bootstrap-server kafka:9092 --list
kafka-topics --bootstrap-server kafka:29092 --list
```

## Describe a topic

```bash
kafka-topics --bootstrap-server kafka:29092 --describe --topic <topic-name>
```

## Delete a topic

```bash
kafka-topics --bootstrap-server kafka:29092 --delete --topic <topic-name>
```

## Produce messages to a topic

```bash
kafka-console-producer --bootstrap-server kafka:29092 --topic <topic-name>
```

## Consume messages from a topic

```bash
kafka-console-consumer --bootstrap-server kafka:29092 --topic <topic-name>
```

## Consume messages from a topic with a specific group id

```bash
kafka-console-consumer --bootstrap-server kafka:29092 --topic <topic-name> --group <group-id>
```

## Consume messages from a topic with a specific group id and from the beginning

```bash
kafka-console-consumer --bootstrap-server kafka:29092 --topic <topic-name> --group <group-id> --from-beginning
```

## Consume messages from a topic with a specific group id and from the end

```bash
kafka-console-consumer --bootstrap-server kafka:29092 --topic <topic-name> --group <group-id> --from-end
```

## Consume messages from a topic with a specific group id and from a specific offset

```bash
kafka-console-consumer --bootstrap-server kafka:29092 --topic <topic-name> --group <group-id> --offset <offset>
```
