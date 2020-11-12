#!/usr/bin/env bash

tar -xzvf /tmp/$NODE_EXPORTER_PACKAGE -C /opt/
chown -R root:root /opt/node_exporter-*.*-amd64
ln -s /opt/node_exporter-*.*-amd64/node_exporter /usr/sbin/node_exporter
nohup node_exporter &