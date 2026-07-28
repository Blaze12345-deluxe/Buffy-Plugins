VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Displays disk usage"
OUTPUT = false

WRITE "=== Disk Usage ==="
OUTPUT = true
RUN "df -h"
OUTPUT = false
