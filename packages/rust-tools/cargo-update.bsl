VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Updates all installed cargo packages"

OUTPUT = false

WRITE "Updating cargo packages..."
OUTPUT = true
RUN "cargo install-update -a 2>/dev/null || cargo install --list | grep '^[a-z]' | cut -d' ' -f1 | xargs -r cargo install 2>/dev/null || echo 'Install cargo-update: cargo install cargo-update'"
OUTPUT = false

WRITE "Update check complete."
