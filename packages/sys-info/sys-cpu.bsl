VERSION = "2026.07.28"
AUTHOR = "Buffy Community"
DESCRIPTION = "Displays CPU usage and info"
OUTPUT = false

WRITE "=== CPU Information ==="
OUTPUT = true
RUN "echo 'Model:' && cat /proc/cpuinfo | grep 'model name' | head -1 | cut -d: -f2"
RUN "echo 'Cores:' && nproc"
RUN "echo 'Load:' && uptime | awk -F'load average:' '{print $2}'"
OUTPUT = false
