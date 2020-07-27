#!/bin/bash -e

if ! snapctl is-connected block-devices ; then
    echo "please connect block-devices interface to continue"
    echo "run \`snap connect $SNAP_NAME:block-devices\`"
    exit 1
fi

exec "$@"