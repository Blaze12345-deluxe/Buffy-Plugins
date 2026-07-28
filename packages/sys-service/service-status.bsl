VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Shows status of a systemd service"
OUTPUT = false

WRITE "Service status: ${1}"
OUTPUT = true
RUN "systemctl status ${1} --no-pager"
OUTPUT = false
