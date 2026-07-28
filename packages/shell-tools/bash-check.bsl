VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Syntax-checks all .sh files with bash -n"

OUTPUT = false

WRITE "Checking shell syntax..."
OUTPUT = true
RUN "for f in *.sh; do bash -n \"$f\" && echo \"  OK: $f\" || echo \"  FAIL: $f\"; done"
OUTPUT = false

WRITE "Syntax check complete."
