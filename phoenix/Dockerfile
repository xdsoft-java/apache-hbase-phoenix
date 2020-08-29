FROM woe1997/hbase-base-2.0.6:1.0

ARG PHOENIX_VER=5.0.0
ARG HBASE_VER=2.0
ARG MIRROR_URL="https://downloads.apache.org"

ENV PHOENIX_VERSION=$PHOENIX_VER
ENV PHOENIX_HOME /opt/apache-phoenix-$PHOENIX_VERSION-HBase-$HBASE_VER-bin
ENV PHOENIX_URL ${MIRROR_URL}/phoenix/apache-phoenix-$PHOENIX_VERSION-HBase-$HBASE_VER/bin/apache-phoenix-$PHOENIX_VERSION-HBase-$HBASE_VER-bin.tar.gz

RUN set -x \
    && curl -fSL "$PHOENIX_URL" -o /tmp/phoenix.tar.gz \
    && tar -xvf /tmp/phoenix.tar.gz -C /opt/ \
    && rm /tmp/phoenix.tar.gz*

RUN cp -a ${PHOENIX_HOME}/phoenix-core-$PHOENIX_VERSION-HBase-$HBASE_VER.jar ${PHOENIX_HOME}/phoenix-$PHOENIX_VERSION-HBase-$HBASE_VER-server.jar /opt/hbase-$HBASE_VERSION/lib/

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 8765

WORKDIR ${PHOENIX_HOME}/bin

CMD ["/run.sh"]
