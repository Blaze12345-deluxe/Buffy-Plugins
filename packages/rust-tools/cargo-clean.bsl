VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Removes cargo build artifacts"

OUTPUT = false

WRITE "Cleaning cargo build artifacts..."
OUTPUT = true
RUN "cargo clean"
OUTPUT = false

WRITE "Clean complete."
