# Docker - Strapi v4 - PostgreSQL - Alpine

Solution using Strapi v4 with Docker. I was missing an simple small way to use Strapi v4 in Docker and never wanted to trick with something like: [Strapi Community](https://github.com/strapi-community/strapi-tool-dockerize). 

## Usage

* clone this repository
* modify the `.env` file
* create your own docker compose file by extending `strapi4-postgres-compose.yml` and embeding `postgres_db` and `strapi4`

**IMPORTANT** Postgres service name should be passed to strapis environment variables as `DATABASE_HOST` value.

## Docker Container

a docker node container ist used with a startup script `docker-init.sh`. This script starts or installs strapi inside the container. The installation folder is exported. 


## Further Information

### Online
(https://hub.docker.com/_/postgres)
(https://docs.docker.com/compose/)
(https://docs.strapi.io/developer-docs/latest/getting-started/quick-start.html)

### Terminal
`npx create-strapi-app@latest --help`