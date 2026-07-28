VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Runs shellcheck on all .sh files"

OUTPUT = false

WRITE "Running shellcheck..."
OUTPUT = true
RUN "shellcheck *.sh 2>/dev/null || echo 'No .sh files found or shellcheck not installed'"
OUTPUT = false
