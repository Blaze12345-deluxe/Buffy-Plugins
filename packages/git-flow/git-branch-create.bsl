VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Creates a new git branch from current HEAD"
OUTPUT = false

WRITE "Creating branch: ${1}"
OUTPUT = true
RUN "git branch ${1}"
OUTPUT = false
WRITE "Branch '${1}' created."
