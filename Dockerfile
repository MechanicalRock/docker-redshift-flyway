FROM boxfuse/flyway:5.1.4

ENV REDSHIFT_DRIVER_VERSION=1.2.15.1025

ADD https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/${REDSHIFT_DRIVER_VERSION}/RedshiftJDBC42-${REDSHIFT_DRIVER_VERSION}.jar /flyway/drivers