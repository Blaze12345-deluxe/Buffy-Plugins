VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Makes all .sh files executable"

OUTPUT = false

WRITE "Fixing permissions..."
OUTPUT = true
RUN "chmod +x *.sh 2>/dev/null && echo 'Permissions fixed.' || echo 'No .sh files found'"
OUTPUT = false
