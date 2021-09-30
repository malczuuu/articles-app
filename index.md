# Articles App

A simple application for exploring multi-tenancy concepts.

## Table of Contents

- [Summary](#summary)
- [Motivation](#motivation)
- [Application setup](#application-setup)
- [Technologies](#technologies)
- [Project repositories](#project-repositories)

## Summary

Application gives the users a personal space for writing articles (quite simple CRUD application).
The application however is available from three different domains, each integrated with different
Keycloak realm. This creates a multi-tenant environment, where each tenant has its own set of users
and the application resources.

## Motivation

Motivation for this project was to prepare an environment of multiple applications integrated with
multiple [Keycloak][keycloak] realms. Such configured Keycloak, with proper OAuth 2.0 / OIDC clients
and predefined users is enough of a value for eventual use in other personal projects.

## Application setup

Application consists of several Docker services, coordinated to work in a single system. Such
services consists of [`articles-backend`][articles-backend] (backed by [MongoDB][mongodb])
and [`articles-webapp`][articles-webapp]. IAM and multi-tenancy is implemented using
[Keycloak][keycloak] (backed by [MariaDB][mariadb] database).

An example setup using `docker-compose.yaml` is available in [`README.md`][articles-app-readme]. See
also the default set of users to authenticate in the same document.

## Technologies

1. Software Frameworks
    - [Spring Boot][spring-boot] version `2.5.5`.
    - [Angular][angular] version `12.2.5`.
2. Integrations
    - [MongoDB][mongodb] version `5.0.2`.
    - [Keycloak][keycloak] version `15.0.2`.
    - [MariaDB][mariadb] version `10.6.4`.

## Project repositories

* [`articles-app`][articles-app], which holds Docker environment setup.
* [`articles-backend`][articles-backend], which holds backend application.
* [`articles-webapp`][articles-webapp], which holds frontend application.

[articles-app-readme]: https://github.com/malczuuu/articles-app/blob/master/README.md

[articles-backend]: https://github.com/malczuuu/articles-backend

[mongodb]: https://docs.mongodb.com/

[articles-webapp]: https://github.com/malczuuu/articles-webapp

[spring-boot]: https://docs.spring.io/spring-boot/docs/2.5.5/reference/html/

[angular]: https://angular.io/docs

[keycloak]: https://www.keycloak.org/documentation

[mariadb]: https://mariadb.com/kb/en/documentation/

[articles-app]: https://github.com/malczuuu/articles-app
