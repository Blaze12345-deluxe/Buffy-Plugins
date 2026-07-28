VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Lists all git stashes"
OUTPUT = false

WRITE "Git Stashes:"
OUTPUT = true
RUN "git stash list"
