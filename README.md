# Articles Operations

Operations of a simple application for exploring multi-tenancy concepts.

## Running

1. Build `articles-backend` and `articles-webapp` Docker images, based on instructions.
2. Launch the environment from `docker-compose.yaml` by calling `docker-compose up -d`. Note, that
   some services might require restart, due to them not waiting for successful launch of the
   dependencies.
