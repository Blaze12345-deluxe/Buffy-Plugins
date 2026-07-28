VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Shows top processes by CPU and memory"
OUTPUT = false

WRITE "=== Top Processes by CPU ==="
OUTPUT = true
RUN "ps aux --sort=-%cpu | head -10"
OUTPUT = false

WRITE ""
WRITE "=== Top Processes by Memory ==="
OUTPUT = true
RUN "ps aux --sort=-%mem | head -10"
OUTPUT = false
