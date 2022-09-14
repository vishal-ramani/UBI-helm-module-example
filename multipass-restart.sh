#!/bin/bash

export VM_NAME=cli-tools
export ROOT=$(pwd)
export CLI_TOOLS_CONFIG="$ROOT/cli-tools.yaml"

multipass list
multipass stop $VM_NAME
multipass list
multipass delete $VM_NAME
multipass list
multipass purge
multipass list
multipass launch --name cli-tools --cloud-init $CLI_TOOLS_CONFIG

