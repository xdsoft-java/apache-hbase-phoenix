# Apache HBase + Phoenix

## Prerequisites

* [Git](https://git-scm.com/);
* [Docker](https://docs.docker.com/get-docker/);
* [Docker Compose](https://docs.docker.com/compose/install/) — included as part of the Docker Desktop for Windows and Mac, for GNU/Linux install using `pip3`.

## Install

```
git clone https://github.com/mrauhu/apache-hbase-phoenix
```

```
cd apache-hbase-phoenix
```

## Usage

1. Run containers in background:

    ```sh
    docker-compose up -d
    ```

2. Connect using JDBC URI:

   ```
   127.0.0.1:2181
   ```
   
    > Example of connect using the `sqlline.py`:
    > 
    > ```sh
    > docker-compose exec hbase python /opt/apache-phoenix-5.0.0-HBase-2.0-bin/sqlline.py hbase:2181:/hbase
    > ```
    > 
    > For an exit write `!quit` then press <kbd>Enter</kbd>.
 
3. Show last 10 log entries for every container and follow log output:

    ```sh
    docker-compose logs -f --tail=10
    ``` 
   
   Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to exit.
   
4. Stop background containers:

    ```sh
    docker-compose stop
    ```

## Development

### Up

Running containers in the foreground and follow log output:

```
docker-compose up
```

Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to exit.

### Down

Stopping and removing containers (include orphaned) with networks and volumes:

```
docker-compose down --volumes --remove-orphans
```

## Environment variables

Setup in `*.env` files:

* `hadoop.env`;
* `hbase-standalone.env`.
