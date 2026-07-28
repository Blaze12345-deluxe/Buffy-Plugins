VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Creates and pushes a git tag"
OUTPUT = false

WRITE "Tagging: ${1}"
OUTPUT = true
RUN "git tag ${1}"
RUN "git push origin ${1}"
OUTPUT = false
WRITE "Tag '${1}' created and pushed."
