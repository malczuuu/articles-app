# Configuration files for Docker services

## `mariadb/`

Contains SQL scripts, which create database and privileges for Keycloak service. The order of
scripts execution follows the files order within directory.

## `mongodb/`

Contains [MongoDB shell][mongodb-shell] scripts, which initialize a single-node replica set and
proper collections with indexes. The order of scripts execution follows the files order within
directory.

## `traefik/`

Contains the routing configuration files for two [traefik][traefik] reverse-proxies, used by
[`docker-compose.yaml`][docker-compose.yaml] file.

[mongodb-shell]: https://docs.mongodb.com/v5.0/reference/program/mongo/

[traefik]: https://doc.traefik.io/traefik/

[docker-compose.yaml]: ../docker-compose.yaml
