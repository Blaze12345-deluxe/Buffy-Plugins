VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Formats all Go source files in the project"

OUTPUT = false

WRITE "Formatting Go source files..."
OUTPUT = true
RUN "go fmt ./..."
OUTPUT = false

WRITE "Formatting complete."
