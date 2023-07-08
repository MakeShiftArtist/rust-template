# rust-template

![Tests](https://github.com/MakeShiftArtist/rust-template/actions/workflows/tests.yml/badge.svg)
![GitHub](https://img.shields.io/github/license/MakeShiftArtist/rust-template)
![GitHub last commit](https://img.shields.io/github/last-commit/MakeShiftArtist/rust-template)
![Issues](https://img.shields.io/github/issues/MakeShiftArtist/rust-template)
![GitHub Repo stars](https://img.shields.io/github/stars/MakeShiftArtist/rust-template)

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

  - `check_lint.sh` to check for syntax errors, formatting errors, or linting errors.
  - `test_code.sh` to test code with llvm-cov and generate a code coverage report.

- **Preconfigured GitHub workflow** for Continuous Integration (CI) in Rust. The workflow uses llvm-cov and caches binaries to reduce workflow execution time.

## Usage

To use this template, click on the "Use this template" button at the top of the repository page or [click here](https://github.com/MakeShiftArtist/rust-template/generate). This will create a new repository based on this template.

Once you have created a repository from this template, you can customize it according to your project's needs. Make sure to update the `Cargo.toml` file with your specific dependencies and modify the file structure as necessary.

### Workflow

The included GitHub workflow provides a CI setup for your Rust project. It utilizes llvm-cov for code coverage and caches binaries to speed up workflow execution.

This workflow is enabled automatically when you create your repo from the template.

The workflow will trigger on every push or pull request to the "main" branch , running the following steps:

1. Set up the Rust toolchain and cache dependencies.
2. Check code base via cargo check, fmt, and clippy
3. Build and test the code using llvm-cov for code coverage.

To disable the workflow, you can comment out or remove the `.github/workflows/tests.yml` file.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE). Feel free to modify and use it to suit your needs.

---

_Note: This README is a template created by MakeShiftArtist for the `rust-template` repository. Please update the information and content accordingly when using this template for your own projects._
