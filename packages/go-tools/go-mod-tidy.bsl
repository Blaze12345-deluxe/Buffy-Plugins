VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Runs go mod tidy to clean dependencies"

OUTPUT = false

WRITE "Running go mod tidy..."
OUTPUT = true
RUN "go mod tidy"
OUTPUT = false

WRITE "go.mod tidied."
