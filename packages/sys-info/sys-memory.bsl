VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Displays memory usage"
OUTPUT = false

WRITE "=== Memory Usage ==="
OUTPUT = true
RUN "free -h"
OUTPUT = false
