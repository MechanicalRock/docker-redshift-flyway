# docker-redshift-flyway
Docker container for performing Redshift database Migrations using Flyway

[Flyway](https://github.com/flyway/flyway-docker) container, with the addition of the [Redshift JDBC Driver](https://docs.aws.amazon.com/redshift/latest/mgmt/configure-jdbc-connection.html)

Usage:
```
export FLYWAY_VERSION=5.1.4
export REDSHIFT_VERSION=1.2.15.1025
export SQL_SCRIPTS=/path/to/schemas/directory
export SCHEMAS_TO_MIGRATE=my_schema
export DATABASE_USER=myuser
export JDBC_URL=jdbc:redshift://redshift-host-name:5439/my_redshift_db
docker run -v "${SQL_SCRIPTS}:/flyway/sql" \
        mechanicalrock/docker-redshift-flyway:${FLYWAY_VERSION}-${REDSHIFT_VERISON} \
        -user "${DATABASE_USER}" \
        -url "${JDBC_URL}" \
        -schemas "${SCHEMAS_TO_MIGRATE}" \
        -locations filesystem:/flyway/sql \
        migrate
```

# Contributing

Please note, issues are disabled for this repository.

To contribute an updated version for this container:
* Fork the repository
* Make your changes
* Submit a PR

# Releasing

```
export FLYWAY_VERSION=<new-version>
export REDSHIFT_VERSION=<new-version>
git tag ${FLYWAY_VERSION}-${REDSHIFT_VERSION}
git push --tags
```