VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Displays Node.js and npm versions"

OUTPUT = false

WRITE "Node.js:"
RUN "node --version"

WRITE "npm:"
RUN "npm --version"
