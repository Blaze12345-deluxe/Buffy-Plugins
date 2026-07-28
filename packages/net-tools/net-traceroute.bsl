VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Traces the route to a host"

OUTPUT = false

WRITE "Tracing route to ${1}..."
OUTPUT = true
RUN "traceroute ${1} 2>/dev/null || mtr --report ${1} 2>/dev/null || echo '(install traceroute or mtr)'"
OUTPUT = false

WRITE "Trace complete."
