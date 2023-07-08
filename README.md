# Rust Template

[![Tests](https://github.com/MakeShiftArtist/rust-template/actions/workflows/tests.yml/badge.svg)](https://github.com/MakeShiftArtist/rust-template/actions/workflows/tests.yml)
![GitHub issues](https://img.shields.io/github/issues/makeshiftartist/rust-template)
![GitHub Repo stars](https://img.shields.io/github/stars/makeshiftartist/rust-template)
![GitHub last commit](https://img.shields.io/github/last-commit/MakeShiftArtist/rust-template)
![GitHub](https://img.shields.io/github/license/MakeShiftArtist/rust-template)

This repository is a GitHub template repository created by MakeShiftArtist to help you quickly set up and configure your Rust environment. It provides an opinionated template with preconfigured settings and dependencies to streamline your Rust development process.

## Features

- **cargo-llvm-cov** for testing with code coverage using the following command:

  ```
  cargo llvm-cov --show-missing-lines --lib
  ```

- **Opinionated file structure** with the following layout:

  - `./src/bin/main.rs` for your binary application entry point.
  - `./src/lib.rs` for your library code.

- **Prefilled .gitignore** with Cargo files and .env being ignored.

- **Cargo.toml** with the following dependencies:

  - [log](https://crates.io/crates/log) for logging.
  - [env_logger](https://crates.io/crates/env_logger) for configuring logging.
  - [dotenv](https://crates.io/crates/dotenv) for reading environment variables from a .env file.

- **Scripts folder** with helpful scripts:

  - `check_lint.sh` to check code formatting.
  - `test_code.sh` to test code with llvm-cov.
  - `ci.sh` for the CI workflow.

- **Preconfigured GitHub workflow** for Continuous Integration (CI) in Rust. The workflow runs a separate job that performs cargo check, cargo fmt, and cargo clippy.
  The workflow file is named `tests.yml` and is enabled by default.

## Usage

To use this template, click on the "Use this template" button at the top of the repository page or [click here](https://github.com/MakeShiftArtist/rust-template/generate). This will create a new repository based on this template.

Once you have created a repository from this template, you can customize it according to your project's needs. Make sure to update the `Cargo.toml` file with your specific dependencies and modify the file structure as necessary.

### Workflow

The included GitHub workflow provides a CI setup for your Rust project. It utilizes llvm-cov for code coverage and caches the Rust toolchain to speed up workflow execution.

The workflow is triggered only on pushes or pull requests to the `main` branch, and it consists of the following steps:

1. Checks for a cached version of the Rust toolchain.
2. If the Rust toolchain is not cached, it sets up the toolchain and caches it for future runs.
3. Creates two jobs:
   - **lint-code**: Runs `cargo check`, `cargo fmt`, and `cargo clippy`.
   - **test-code**: Uses `cargo-llvm-cov` to test the code and generate coverage reports.

To disable the workflow, you can comment out or remove the `.github/workflows/tests.yml` file.

## License

This project is licensed under the [GNU GPL 3.0 License](LICENSE). Feel free to modify and use it to suit your needs.

---

_Note: This README is a template created by MakeShiftArtist for the `rust-template` repository. Please update the information and content accordingly when using this template for your own projects._
