#!/bin/bash
set -e

if [ ! -f "/usr/share/elasticsearch/plugins/k-NN/plugin-descriptor.properties" ]; then
  echo "Installing k-NN plugin..."
  /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch k-NN
else
  echo "k-NN plugin already installed."
fi
