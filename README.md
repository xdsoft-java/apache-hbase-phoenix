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

### Development

Server listen on `127.0.0.1:8765`.

#### Run in foreground

```
docker-compose up
```

Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to exit.

#### Run in background

```
docker-compose up -d
```

#### Stop

```
docker-compose down
```

## Environment variables

Set it in the `.env` file:

* `MIRROR_URL` — Apache download mirror URL;
* `PHOENIX_VER` — `5.0.0`, supports only `5.x.y`;
* `HBASE_VER` — `2.0`, supports only `2.x`.
* `HBASE_VERSION` — `2.0.6`, supports only `2.x.y`.
