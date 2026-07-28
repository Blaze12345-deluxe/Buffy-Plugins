VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Removes node_modules and reinstalls from scratch"

OUTPUT = false

WRITE "Removing node_modules..."
OUTPUT = true
RUN "rm -rf node_modules"
OUTPUT = false

WRITE "Reinstalling..."
OUTPUT = true
RUN "npm install"
OUTPUT = false

WRITE "Clean reinstall complete."
