# Articles App

A simple application for exploring multi-tenancy concepts. This repository serves the purpose of
setup and configuration. See [Project repositories](#project-repositories) chapter for links to
implementation repositories.

Contains a full environment setup for three tenant environments, accessible by different domains,
secured by respective Keycloak realms.

## Table of Contents

* [Running on local machine](#running-on-local-machine)
* [Pre-configured realms in Keycloak](#pre-configured-realms-in-keycloak)
* [Pre-configured users in Keycloak](#pre-configured-users-in-keycloak)
* [Project repositories](#project-repositories)
* [Trivia](#trivia)

## Running on local machine

The setup requires ports `:80` and `:27017` to be available for HTTP server and MongoDB.

Proper fake-domains must be configured within `/ets/hosts`.

```text
127.0.0.1 dbadmin.example.com
127.0.0.1 mailbox.example.com
127.0.0.1     sso.example.com

127.0.0.1 galaxy.articles.example.com
127.0.0.1 marvel.articles.example.com
127.0.0.1  shire.articles.example.com
```

Docker images of [`articles-backend`][articles-backend] and [`articles-webapp`][articles-webapp] are
not available on any public Docker registry. Build these manually, following the instructions from
respective `README.md` files.

The environment can be launched via `docker-compose.yaml`.

```shell
$ docker-compose up -d
```

Note, that some services might require restart, due to them not waiting for successful launch of the
dependencies.

By browsing any of above-mentioned domains (make sure to use an unsecured `http://` schema), a
proper HTTP service should be accessed.

## Pre-configured realms in Keycloak

| realm    | application                         | account                    | admin console              |
| -------- | ----------------------------------- | -------------------------- | -------------------------- |
| `master` | [link][master-sso-application]      | [link][master-sso-account] | [link][master-sso-console] |
| `galaxy` | [link][galaxy-articles-application] | [link][galaxy-sso-account] | [link][galaxy-sso-console] |
| `marvel` | [link][marvel-articles-application] | [link][marvel-sso-account] | [link][marvel-sso-console] |
| `shire`  | [link][shire-articles-application]  | [link][shire-sso-account]  | [link][shire-sso-console]  |

## Pre-configured users in Keycloak

| realm    | username | e-mail address              | password | realm admin |
| -------- | -------- | --------------------------- | -------- | ----------- |
| `master` | `truth`  | `truth@example.com`         | `qq`     | full        |
| `galaxy` | n/a      | `obiwan.kenobi@example.com` | `qq`     |             |
| `galaxy` | n/a      | `palpatine@example.com`     | `qq`     | full        |
| `galaxy` | n/a      | `skywalker@example.com`     | `qq`     |             |
| `galaxy` | n/a      | `yoda@example.com`          | `qq`     |             |
| `marvel` | n/a      | `banner@example.com`        | `qq`     |             |
| `marvel` | n/a      | `rogers@example.com`        | `qq`     | limited     |
| `marvel` | n/a      | `spiderman@example.com`     | `qq`     |             |
| `marvel` | n/a      | `stark@example.com`         | `qq`     | full        |
| `marvel` | n/a      | `thor@example.com`          | `qq`     |             |
| `shire`  | n/a      | `frodo@example.com`         | `qq`     | full        |
| `shire`  | n/a      | `merry@example.com`         | `qq`     |             |
| `shire`  | n/a      | `pipin@example.com`         | `qq`     |             |
| `shire`  | n/a      | `samwise@example.com`       | `qq`     |             |

## Project repositories

* [`articles-app`][articles-app], which holds Docker environment setup.
* [`articles-backend`][articles-backend], which holds backend application.
* [`articles-webapp`][articles-webapp], which holds frontend application.

## Trivia

* **Note**, that all UUIDs, passwords and other secrets are random.

[master-sso-application]: http://sso.example.com

[master-sso-account]: http://sso.example.com/auth/realms/master/account/

[master-sso-console]: http://sso.example.com/auth/admin/master/console/

[galaxy-articles-application]: http://galaxy.articles.example.com

[galaxy-sso-account]: http://sso.example.com/auth/realms/galaxy/account/

[galaxy-sso-console]: http://sso.example.com/auth/admin/galaxy/console/

[marvel-articles-application]: http://marvel.articles.example.com

[marvel-sso-account]: http://sso.example.com/auth/realms/marvel/account/

[marvel-sso-console]: http://sso.example.com/auth/admin/marvel/console/

[shire-articles-application]: http://shire.articles.example.com

[shire-sso-account]: http://sso.example.com/auth/realms/shire/account/

[shire-sso-console]: http://sso.example.com/auth/admin/shire/console/

[articles-backend]: https://github.com/malczuuu/articles-backend

[articles-webapp]: https://github.com/malczuuu/articles-webapp

[articles-app]: https://github.com/malczuuu/articles-app
