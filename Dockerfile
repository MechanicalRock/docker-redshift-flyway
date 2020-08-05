FROM boxfuse/flyway:5.1.4

ARG REDSHIFT_DRIVER_VERSION
ENV REDSHIFT_FALLBACK_DRIVER 1.2.16.1027
ENV RDV=${REDSHIFT_DRIVER_VERSION:-${REDSHIFT_FALLBACK_DRIVER}}
ADD https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/${RDV}/RedshiftJDBC42-${RDV}.jar /flyway/drivers

RUN apt-get update && apt-get install -y netcat-openbsd

ENTRYPOINT []
