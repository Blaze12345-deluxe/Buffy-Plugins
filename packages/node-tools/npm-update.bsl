VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Updates all npm packages to latest versions"

OUTPUT = false

WRITE "Updating npm packages..."
OUTPUT = true
RUN "npm update"
OUTPUT = false

WRITE "All packages updated."
