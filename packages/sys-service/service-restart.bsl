VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Restarts a systemd service"
OUTPUT = false

WRITE "Restarting: ${1}"
OUTPUT = true
RUN "sudo systemctl restart ${1}"
OUTPUT = false
WRITE "'${1}' restarted."
