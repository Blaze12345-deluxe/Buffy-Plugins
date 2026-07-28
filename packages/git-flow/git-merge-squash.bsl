VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Squash-merges a branch into the current branch"
OUTPUT = false

WRITE "Squash-merging '${1}' into current branch..."
OUTPUT = true
RUN "git merge --squash ${1}"
OUTPUT = false
WRITE "Squash merge complete. Stage and commit the changes."
