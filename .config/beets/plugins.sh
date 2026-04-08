#!/bin/bash

plugins=("fetchart" "embedart" "deezer" "lyrics" "discogs" "missing")

echo "Looging for pipx..."

if ! command -v pipx &>/dev/null; then
    echo "Pipx not found"
    exit 1
fi

echo "Installing plugins"

for plugin in ${plugins[@]}; do
    pipx runpip beets install beets[$plugin]
done
