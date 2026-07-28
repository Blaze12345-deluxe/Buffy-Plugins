VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Enables a systemd service to start on boot"
OUTPUT = false

WRITE "Enabling: ${1}"
OUTPUT = true
RUN "sudo systemctl enable ${1}"
OUTPUT = false
WRITE "'${1}' enabled on boot."
