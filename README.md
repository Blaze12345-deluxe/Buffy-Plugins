# Buffy Plugins

A community repository of installable [Buffy CLI](https://github.com/Blaze12345-deluxe/BuffyCLI) plugins.

> **Tip:** Buffy v0.1.2+ ships with `pip-env` pre-installed. Try `buffy pip-env` immediately after installation — no explicit install needed.

---

## Documentation

The [Buffy CLI repository](https://github.com/Blaze12345-deluxe/BuffyCLI) includes comprehensive plain-text documentation in its `docs/` folder:

| File | Covers |
|------|--------|
| [`INSTALLATION.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/INSTALLATION.txt) | Installing from source, cargo, or binary |
| [`COMMANDS.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/COMMANDS.txt) | All CLI flags, repo management, aliases, examples |
| [`SCRIPT_LANGUAGE.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/SCRIPT_LANGUAGE.txt) | Complete BSL syntax, variables, best practices |
| [`CONFIGURATION.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/CONFIGURATION.txt) | ~/.buffy/ layout, package.json format, SHA files |
| [`TROUBLESHOOTING.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/TROUBLESHOOTING.txt) | Common problems and diagnostics |
| [`DEVELOPMENT.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/DEVELOPMENT.txt) | Building, testing, and contributing to Buffy itself |

For a quick start with plugins, continue below.

---

## Quick Start

```bash
# Add this repository to Buffy (shorthand without 'add')
buffy --repo https://github.com/Blaze12345-deluxe/Buffy-Plugins

# Refresh the package index
buffy --repo refresh

# Install a plugin
buffy --install python-tools

# Use it
buffy python-version
```

---

## Available Plugins

### python-tools

Python development utilities — 5 commands:

| Command | Description |
|---------|-------------|
| `buffy python-version` | Display the current Python version |
| `buffy pip-freeze` | Generate `requirements.txt` from installed packages |
| `buffy pip-install` | Install packages from `requirements.txt` |
| `buffy pip-update` | Upgrade pip and all installed packages |
| `buffy python-clean` | Remove all `__pycache__` directories recursively |

**System dependencies:** `python3`, `python3-pip`

### docker-tools

Docker Compose workflow utilities — 6 commands:

| Command | Description |
|---------|-------------|
| `buffy docker-up` | Start Compose services (`docker compose up -d`) |
| `buffy docker-down` | Stop Compose services |
| `buffy docker-restart` | Restart Compose services |
| `buffy docker-logs` | Show recent logs (last 50 lines) |
| `buffy docker-update` | Pull latest images and recreate containers |
| `buffy docker-prune` | Remove unused containers, images, volumes, and networks |

**System dependencies:** `docker`

---

## Installing Plugins

### Prerequisites

You need [Buffy CLI](https://github.com/Blaze12345-deluxe/BuffyCLI) installed. See the [INSTALLATION.txt](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/INSTALLATION.txt) guide for details:

```bash
git clone https://github.com/Blaze12345-deluxe/BuffyCLI.git
cd BuffyCLI
cargo build --release
sudo cp target/release/buffy /usr/local/bin/
```

### Add the Repository

```bash
buffy --repo https://github.com/Blaze12345-deluxe/Buffy-Plugins
```

### Install a Plugin

```bash
buffy --install python-tools
buffy --install docker-tools
```

### List Installed Plugins

```bash
buffy --list
```

### Update Plugins

```bash
buffy --update-packages
```

### Search for Plugins

```bash
buffy --repo search python
buffy --repo search docker
```

### Uninstall a Plugin

```bash
buffy --uninstall python-tools
```

---

## Creating Your Own Plugin

Every Buffy plugin is a directory containing:

- **`package.json`** — Plugin manifest (required)
- **`{name}-SHA.txt`** — SHA-256 checksum (required)
- **`*.bsl`** — One or more BSL script files (required)
- **`README.md`** — Documentation (recommended)

> **Scaffolding tool:** Use the [template/.compile.py](https://github.com/Blaze12345-deluxe/Buffy-AI-Script-Maker/tree/master/template) interactive scaffolder to generate your plugin directory, `.bsl` files, SHA checksums, and `index.json` automatically.

### Plugin Structure

```
my-plugin/
├── package.json           # Manifest
├── my-plugin-SHA.txt      # Checksum
├── my-plugin.bsl          # Command file
├── subcommand.bsl         # Optional additional commands
└── README.md              # Documentation
```

### BSL Script Basics

BSL (Buffy Script Language) is a simple automation language. Each script starts with metadata, followed by instructions:

```bsl
VERSION = "2026.07.28"
AUTHOR = "Your Name"
DESCRIPTION = "What this command does"
OUTPUT = false

WRITE "Doing something..."
RUN "some-command"
WAIT 2
WRITE "Done."
EXIT
```

**Available instructions:**

| Instruction | Description |
|-------------|-------------|
| `WRITE "text"` | Print text to the terminal |
| `RUN "command"` | Execute a shell command |
| `WAIT <seconds>` | Pause execution |
| `WAIT "prompt>"` | Wait for user input |
| `CLEAR` | Clear the terminal screen |
| `EXIT` | Stop execution early |
| `OUTPUT = true/false` | Toggle command output visibility |

**Built-in variables:**

| Variable | Description |
|----------|-------------|
| `${HOME}` | User's home directory |
| `${USER}` | Current username |
| `${PWD}` | Current working directory |
| `${DATE}` | Current date (YYYY-MM-DD) |
| `${TIME}` | Current time (HH:MM:SS) |
| `${1}`–`${N}` | Script arguments |

> For a complete BSL reference — including variable resolution order, error handling, runtime OUTPUT toggling, command resolution priorities, and best practices — see the [SCRIPT_LANGUAGE.txt](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/SCRIPT_LANGUAGE.txt) guide.

### Package Manifest (package.json)

```json
{
    "name": "my-plugin",
    "version": "2026.07.28",
    "description": "What my plugin does",
    "author": "Your Name",
    "sha256": "<64-char-hex-hash>",
    "tags": ["utility", "dev-tools"],
    "commands": ["my-plugin", "my-plugin subcommand"],
    "dependencies": {
        "system": ["git", "curl"],
        "packages": []
    },
    "license": "MIT",
    "min_buffy_version": "0.1.0"
}
```

| Field | Required | Description |
|-------|----------|-------------|
| `name` | ✅ | Plugin name (used for install, uninstall) |
| `version` | ✅ | Date-based version (`YYYY.MM.DD`) |
| `description` | ✅ | Short description shown by `buffy --info` |
| `author` | ✅ | Creator name or organization |
| `sha256` | ✅ | SHA-256 hash of all `.bsl` files combined |
| `tags` | No | Keywords for search and discoverability |
| `commands` | No | List of commands the plugin provides |
| `dependencies.system` | No | System tools required (checked against `$PATH`) |
| `dependencies.packages` | No | Other BSL plugins required |
| `license` | No | SPDX license identifier |
| `min_buffy_version` | No | Minimum Buffy version required |

### Generating the SHA-256 Checksum

The checksum is computed over all `.bsl` files in the package directory, sorted alphabetically and concatenated:

```bash
# Compute the SHA-256 hash (exclude package.json and SHA.txt)
cat my-plugin.bsl subcommand.bsl | sha256sum
# → 6e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
```

Copy the hash into both:
- The `sha256` field in `package.json`
- The `{name}-SHA.txt` file (formatted as `<hash>  <name>`)

Example `my-plugin-SHA.txt`:

```
6e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  my-plugin
```

### Validating Your Plugin

```bash
# Check BSL syntax
buffy --check my-plugin.bsl

# Install locally and test
buffy --install ./my-plugin
buffy my-plugin

# Verify integrity
buffy --verify my-plugin

# View metadata
buffy --info my-plugin

# Uninstall when done testing
buffy --uninstall my-plugin
```

### Real Example: A Simple Plugin

**File: `hello/package.json`**

```json
{
    "name": "hello",
    "version": "2026.07.28",
    "description": "A friendly greeting plugin",
    "author": "Your Name",
    "sha256": "abc123...",
    "tags": ["hello", "greeting"],
    "commands": ["hello"],
    "dependencies": { "system": [], "packages": [] },
    "license": "MIT"
}
```

**File: `hello/hello.bsl`**

```bsl
VERSION = "2026.07.28"
AUTHOR = "Your Name"
DESCRIPTION = "Greets the user"

OUTPUT = false

WRITE "Hello, ${USER}! Welcome to Buffy."
WRITE "Today is ${DATE}."
RUN "echo 'You are in: ${PWD}'"
```

**File: `hello/hello-SHA.txt`**

```
6e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  hello
```

---

## Submitting Plugins

To contribute a plugin to this repository:

1. **Fork** this repository on GitHub
2. **Add your plugin** to `packages/<name>/` following the structure above
3. **Update `index.json`** — Add your plugin entry to the `packages` array:

```json
{
    "name": "your-plugin",
    "version": "2026.07.28",
    "description": "What it does",
    "author": "You",
    "path": "packages/your-plugin",
    "tags": ["tag1", "tag2"],
    "dependencies": {
        "system": [],
        "packages": []
    },
    "commands": ["your-plugin"]
}
```

4. **Update `meta.package_count`** in `index.json` to reflect the new count
5. **Submit a Pull Request**

---

## Learn More & Resources

| Resource | Link |
|----------|------|
| Buffy CLI source + docs | [github.com/Blaze12345-deluxe/BuffyCLI](https://github.com/Blaze12345-deluxe/BuffyCLI) |
| Buffy CLI documentation (docs/) | [`docs/README.txt`](https://github.com/Blaze12345-deluxe/BuffyCLI/blob/master/docs/README.txt) (index of all files) |
| Plugin scaffold generator | [Buffy-AI-Script-Maker template/](https://github.com/Blaze12345-deluxe/Buffy-AI-Script-Maker/tree/master/template) |
| AI-powered BSL script generator | [Buffy-AI-Script-Maker](https://github.com/Blaze12345-deluxe/Buffy-AI-Script-Maker) |
| Official releases | [github.com/Blaze12345-deluxe/BuffyCLI/releases](https://github.com/Blaze12345-deluxe/BuffyCLI/releases) |

---

## Guidelines for Plugin Authors

- **Keep it small** — Each plugin should do one thing well. Split large tools into multiple plugins.
- **Use `OUTPUT = false` by default** — Show clean output with `WRITE` statements. Toggle `OUTPUT = true` only around `RUN` commands where the user needs to see output.
- **Declare system dependencies** — List required tools in `dependencies.system` so users know what to install.
- **Use `OUTPUT = true`** before `RUN` commands that the user needs to see (e.g., `python3 --version`, `docker compose logs`).
- **Validate your BSL syntax** with `buffy --check` before submitting.
- **Write a clear description** — Users see this in `buffy --info` and `buffy --repo search`.
- **Tag appropriately** — Use tags that match tool names (`git`, `docker`, `python`, `node`) for discoverability.
- **Version with dates** — Use `YYYY.MM.DD` format (e.g., `2026.07.28`) as specified by the BSL package format.

---

## License

All plugins in this repository are MIT licensed unless otherwise specified in their individual `package.json`.
