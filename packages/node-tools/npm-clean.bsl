VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Removes node_modules directory"

OUTPUT = false

WRITE "Removing node_modules..."
OUTPUT = true
RUN "rm -rf node_modules"
OUTPUT = false

WRITE "node_modules removed. Run 'npm install' to reinstall."
