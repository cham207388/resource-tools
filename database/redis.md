# Redis Commands

| **Step**                  | **Command**                                    | **Explanation & Example** |
|---------------------------|----------------------------------------------|---------------------------|
| **1. Pull Redis Image**   | `docker pull redis`                          | Downloads the latest Redis image from Docker Hub. |
| **2. Run Redis Container** | `docker run -d --name redis-server -p 6379:6379 redis` | Starts a Redis container in detached mode, exposing port `6379`. |
| **3. Check Running Containers** | `docker ps` | Lists running containers to verify that Redis is active. |
| **4. Access Redis CLI**  | `docker exec -it redis-server redis-cli` | Opens the Redis CLI inside the running container. |
| **5. Set a Key-Value Pair** | `SET mykey "Hello Redis"` | Stores the string "Hello Redis" under `mykey`. |
| **6. Retrieve a Value** | `GET mykey` | Retrieves the value stored in `mykey`. Expected output: `"Hello Redis"`. |
| **7. List All Keys** | `KEYS *` | Displays all keys in the Redis database. |
| **8. Check if a Key Exists** | `EXISTS mykey` | Returns `1` if `mykey` exists, otherwise `0`. |
| **9. Delete a Key** | `DEL mykey` | Removes `mykey` from Redis. |
| **10. Exit Redis CLI** | `exit` | Closes the Redis command-line interface. |
| **11. Stop Redis Container** | `docker stop redis-server` | Stops the Redis container. |
| **12. Restart Redis Container** | `docker start redis-server` | Restarts the Redis container. |
| **13. Remove Redis Container** | `docker rm redis-server` | Deletes the Redis container (must be stopped first). |
| **14. Remove Redis Image** | `docker rmi redis` | Deletes the Redis image from your system. |
| **15. View Redis Logs** | `docker logs redis-server` | Shows the logs of the running Redis container. |
| **16. Run Redis with Password** | `docker run -d --name redis-secure -p 6379:6379 -e REDIS_PASSWORD=mysecret redis` | Starts Redis with authentication. |
| **17. Authenticate in Redis CLI** | `AUTH mysecret` | Logs in to Redis when a password is required. |

## Debug

| **Check Type**                 | **Command**            | **Explanation & Example** |
|--------------------------------|-----------------------|---------------------------|
| **Check all keys**             | `KEYS *`              | Lists all keys stored in Redis. **Example Output:** `mykey1 mykey2 session:user:123` |
| **Check if a specific key exists** | `EXISTS mykey` | Returns `1` if `mykey` exists, `0` otherwise. **Example:** `EXISTS mykey` → `1` (key exists) |
| **Get the value of a key** | `GET mykey` | Retrieves the value stored in `mykey`. **Example:** `GET mykey` → `"Hello Redis"` |
| **Check data type of a key** | `TYPE mykey` | Returns the type of value stored (string, list, set, etc.). **Example:** `TYPE mylist` → `list` |
| **Check list contents** | `LRANGE mylist 0 -1` | Shows all items in a list. **Example:** `LRANGE mylist 0 -1` → `["item1", "item2"]` |
| **Check set contents** | `SMEMBERS myset` | Lists all elements in a set. **Example:** `SMEMBERS myset` → `{ "a", "b", "c" }` |
| **Check hash fields and values** | `HGETALL myhash` | Retrieves all field-value pairs in a hash. **Example:** `HGETALL user:1001` → `name: "John", age: "30"` |
| **Check sorted set members** | `ZRANGE myzset 0 -1 WITHSCORES` | Lists all elements in a sorted set with their scores. **Example:** `ZRANGE leaderboard 0 -1 WITHSCORES` → `"Alice 100", "Bob 80"` |
| **Check the number of keys in Redis** | `DBSIZE` | Returns the total number of keys stored in the database. **Example:** `DBSIZE` → `5` |
