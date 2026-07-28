VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Checks for outdated npm packages"

OUTPUT = false

WRITE "Checking for outdated npm packages..."
OUTPUT = true
RUN "npm outdated"
OUTPUT = false

WRITE "Check complete."
