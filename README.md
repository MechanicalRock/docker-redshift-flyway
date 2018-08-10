# docker-redshift-flyway
Docker container for performing Redshift database Migrations using Flyway

[Flyway](https://github.com/flyway/flyway-docker) container, with the addition of the [Redshift JDBC Driver](https://docs.aws.amazon.com/redshift/latest/mgmt/configure-jdbc-connection.html)

Usage:
```
export FLYWAY_VERSION=5.1.4
export REDSHIFT_VERSION=1.2.15.1025
docker run mechanicalrock/docker-redshift-flyway:${FLYWAY_VERSION}-${REDSHIFT_VERISON}
```

# Contributing

Please note, issues are disabled for this repository.

To contribute an updated version for this container:
* Fork the repository
* Make your changes
* Submit a PR