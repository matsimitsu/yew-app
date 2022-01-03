#!/bin/bash
curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-macos-x64
chmod +x tailwindcss-macos-x64
mv tailwindcss-macos-x64 tailwindcss

curl https://sh.rustup.rs -sSf | sh -s -- -y

rustup target add wasm32-unknown-unknown
cargo install wasm-bindgen-cli
cargo install --locked trunk
