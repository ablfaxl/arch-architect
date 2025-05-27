#!/bin/bash
progress "Setting up npm configuration..."

mkdir -p ~/.npm
cat <<EOF > ~/.npmrc
save-exact=true
progress=false
EOF

progress "npm configured."
