VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Shows listening ports and their processes"

OUTPUT = false

WRITE "Listening Ports:"
OUTPUT = true
RUN "ss -tlnp 2>/dev/null || netstat -tlnp 2>/dev/null || echo '(install iproute2 or net-tools)'"
OUTPUT = false
