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
* `PHOENIX_VER` — `4.14.3`, supports only `4.x.y`;
* `HBASE_VER` — `1.3`, supports only `1.x`.
