VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Pings a host with 5 packets"

OUTPUT = false

WRITE "Pinging ${1}..."
OUTPUT = true
RUN "ping -c 5 ${1}"
OUTPUT = false

WRITE "Ping complete."
