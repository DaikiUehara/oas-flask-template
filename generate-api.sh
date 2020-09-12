#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

function usage_exit() {
        echo "Usage: $0 [-h]" 1>&2
        echo "Options:"
        echo "[Optional] h: Show this help."
        exit 1
}

while getopts h OPT
do
    case $OPT in
        h)  usage_exit
            ;;
        \?) usage_exit
            ;;
    esac
done

shift $((OPTIND - 1))

