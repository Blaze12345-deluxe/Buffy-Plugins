VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Lists all running systemd services"
OUTPUT = false

WRITE "Running Services:"
OUTPUT = true
RUN "systemctl list-units --type=service --state=running --no-pager"
OUTPUT = false
