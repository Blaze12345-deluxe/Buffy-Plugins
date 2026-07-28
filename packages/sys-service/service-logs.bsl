VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Shows recent journalctl logs for a service"
OUTPUT = false

WRITE "Recent logs for: ${1}"
OUTPUT = true
RUN "sudo journalctl -u ${1} --no-pager -n 50"
OUTPUT = false
