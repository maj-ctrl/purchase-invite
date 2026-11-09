#!/usr/bin/env bash
# Downloads the Figma images used by the prototype into ./assets
# (Figma asset URLs expire after ~7 days — if this fails, ask Claude to refresh them.)
set -e
cd "$(dirname "$0")"
mkdir -p assets && cd assets
B=https://www.figma.com/api/mcp/asset
dl(){ echo "→ $1"; curl -fsSL -o "$1" "$B/$2"; }
dl suv.png         3df9a7e1-1fe6-43ee-810c-fd80c71de76d.png
dl truck.png       f61b6619-5a67-498f-95eb-0a95da7d3181.png
dl design1.png     3d5c7ed7-9a28-4109-a8d9-5663e412ba0d.png
dl design2.png     4abb7738-57e7-4d40-8ed2-cca896c913d3.png
dl design3.png     637ac354-26c1-4306-b0a9-acec43ae9d95.png
dl hero-truck.png  9299abf6-90c0-41a3-9e6a-7ae9adfd4a68.png
dl video.png       05862e46-3633-4bae-97d8-f7ad4b3cb24a.png
dl logo.svg        2c083dd8-ed73-4ab4-b27d-362fb00f72f0.svg
echo "Done. Open index.html"
