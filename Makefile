release\:macro:
	cd crates/macro && cargo release --no-dev-version --skip-tag --skip-push
release\:support:
	cd crates/support && cargo release --no-dev-version --skip-tag --skip-push
release\:extract:
	cd crates/extract && cargo release --no-dev-version --skip-tag --skip-push
release:
	cargo release
test:
	RUST_TEST_THREADS=1 cargo test
	RUST_TEST_THREADS=1 cargo test --manifest-path examples/app-workspace/Cargo.toml
	RUST_TEST_THREADS=1 cargo test --manifest-path examples/foo/Cargo.toml
	RUST_TEST_THREADS=1 cargo test --manifest-path examples/app-load-path/Cargo.toml
