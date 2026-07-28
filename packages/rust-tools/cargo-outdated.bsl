VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Checks for outdated crate dependencies"

OUTPUT = false

WRITE "Checking for outdated crates..."
OUTPUT = true
RUN "cargo outdated 2>/dev/null || echo 'Install cargo-outdated: cargo install cargo-outdated'"
OUTPUT = false
