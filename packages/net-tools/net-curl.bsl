VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Fetches HTTP headers from a URL"

OUTPUT = false

WRITE "HTTP headers for ${1}:"
OUTPUT = true
RUN "curl -sI ${1}"
OUTPUT = false
