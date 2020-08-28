FROM smizy/hbase:1.3-alpine

ARG PHOENIX_VER=4.14.3
ARG HBASE_VER=1.3
ARG PHOENIX_HOME=/usr/local/phoenix-${PHOENIX_VER}
ARG MIRROR_URL="https://downloads.apache.org"

ENV PATH $PATH:${PHOENIX_HOME}/bin

RUN set -x \
    && apk update \
    && apk --no-cache add \
        bash \
        su-exec \
        python \
        wget \
    && mirror_url=$MIRROR_URL \
    && package_name="apache-phoenix-${PHOENIX_VER}-HBase-${HBASE_VER}" \
    && wget -q -O - ${mirror_url}/phoenix/${package_name}/bin/${package_name}-bin.tar.gz \
        | tar -xzf - -C /usr/local \
    && mv /usr/local/${package_name}-bin ${PHOENIX_HOME} \
    && cd ${PHOENIX_HOME} \
    && mkdir -p server \
    && mv *-server.jar server/ \
    ## cleanup
    && rm *-tests.jar *-sources.jar

## Add user-specified CLASSPATH
ENV HBASE_CLASSPATH ${PHOENIX_HOME}/server/*

WORKDIR ${PHOENIX_HOME}
