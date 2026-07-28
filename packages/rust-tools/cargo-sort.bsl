VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Sorts dependencies in Cargo.toml alphabetically"

OUTPUT = false

WRITE "Sorting dependencies..."
OUTPUT = true
RUN "cargo sort 2>/dev/null && echo 'Dependencies sorted.' || echo 'Install cargo-sort: cargo install cargo-sort'"
OUTPUT = false
