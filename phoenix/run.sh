#!/bin/bash

/opt/hbase-$HBASE_VERSION/bin/start-hbase.sh

/opt/apache-phoenix-$PHOENIX_VERSION-HBase-2.0-bin/bin/queryserver.py
