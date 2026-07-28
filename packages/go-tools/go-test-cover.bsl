VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Runs Go tests with coverage report"

OUTPUT = false

WRITE "Running tests with coverage..."
OUTPUT = true
RUN "go test ./... -cover"
OUTPUT = false

WRITE "Tests complete."
