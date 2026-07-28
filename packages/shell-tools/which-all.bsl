VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Checks which common development tools are on PATH"

OUTPUT = false

WRITE "=== Development Tools ==="
OUTPUT = true
RUN "for cmd in git python3 node cargo go docker make curl; do printf '  %-12s %s\\n' \"$cmd:\" \"$(which $cmd 2>/dev/null || echo 'not found')\"; done"
OUTPUT = false
