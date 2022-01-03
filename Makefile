install_tailwind_dev:
	curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-macos-x64
	chmod +x tailwindcss-macos-x64
	mv tailwindcss-macos-x64 tailwindcss

install_tailwind_prod:
	curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/latest/download/tailwindcss-linux-x64
	chmod +x tailwindcss-linux-x64
	mv tailwindcss-linux-x64 tailwindcss

install_rustup_prod:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
	/vercel/.cargo/bin/rustup target add wasm32-unknown-unknown
	cargo install wasm-bindgen-cli
	cargo install --locked trunk

build_prod:
	trunk build --release
