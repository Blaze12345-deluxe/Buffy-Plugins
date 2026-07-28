VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Performs a DNS lookup on a hostname"

OUTPUT = false

WRITE "DNS lookup for ${1}:"
OUTPUT = true
RUN "nslookup ${1} 2>/dev/null || dig ${1} +short 2>/dev/null || host ${1} 2>/dev/null || echo '(install dnsutils or bind-utils)'"
OUTPUT = false
