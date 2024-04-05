#!/bin/bash

set -e

sed -i '/[[:print:]]*AIRSSRES[[:print:]]*/d' ~/.bashrc

(
    echo
    echo "export AIRSSRES='$(pwd)/bin'"
    echo 'export PATH="$AIRSSRES:$PATH"'
) >> ~/.bashrc

echo "execute the following command:"
echo "source ~/.bashrc"

exit 0
