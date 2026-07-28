VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Deletes a local git branch"
OUTPUT = false

WRITE "Deleting branch: ${1}"
OUTPUT = true
RUN "git branch -d ${1}"
OUTPUT = false
WRITE "Branch '${1}' deleted."
