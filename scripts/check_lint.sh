#!/bin/bash

# This script run cargo check, cargo fmt and cargo clippy simulating the linting part of the CI workflow.

# Run cargo check command
echo "Running cargo check..."
cargo check --all-features

# Run cargo fmt command
echo "Running cargo fmt..."
cargo fmt --all -- --check

# Run cargo clippy command
echo "Running cargo clippy..."
cargo clippy -- -D warnings