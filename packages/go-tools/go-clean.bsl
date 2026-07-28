VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Cleans the Go build cache"

OUTPUT = false

WRITE "Cleaning Go build cache..."
OUTPUT = true
RUN "go clean -cache"
OUTPUT = false

WRITE "Build cache cleaned."
