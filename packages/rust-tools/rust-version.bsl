VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Displays Rust and Cargo versions"

OUTPUT = false

WRITE "Rust:"
RUN "rustc --version"

WRITE "Cargo:"
RUN "cargo --version"

WRITE "Rustup:"
RUN "rustup --version"
