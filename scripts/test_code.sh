#!/bin/bash

# This script runs cargo llvm-cov, simulating the testing part of the CI workflow.

# Check if cargo-llvm-cov is installed
if ! cargo --list | grep -q cargo-llvm-cov; then
  echo "cargo-llvm-cov is already installed."
else
  echo "Installing cargo-llvm-cov..."
  cargo install cargo-llvm-cov
fi

echo "Running cargo llvm-cov..."
cargo llvm-cov --show-missing-lines --lib