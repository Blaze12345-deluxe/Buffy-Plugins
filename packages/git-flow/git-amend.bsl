VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Amends the last commit (stages changes, reuses message)"
OUTPUT = false

OUTPUT = true
RUN "git add -A && git commit --amend --no-edit"
OUTPUT = false
WRITE "Last commit amended."
