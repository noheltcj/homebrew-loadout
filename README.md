# Homebrew Tap for Loadout

This is the official Homebrew tap for [Loadout](https://github.com/noheltcj/loadout), a CLI tool for managing and composing AGENTS.md and equivalents by profile.

## Installation

### Install via Homebrew Tap

```bash
brew tap noheltcj/loadout
brew install loadout
```

### One-liner Installation

```bash
brew install noheltcj/loadout/loadout
```

## Supported Platforms

This tap provides native binaries for the following architectures:

- **macOS**
  - Apple Silicon (ARM64) - `macosArm64`
  - Intel (x86_64) - `macosX64`
- **Linux**
  - x86_64 - `linuxX64`
  - ARM64 - `linuxArm64`

Homebrew will automatically detect your system architecture and install the appropriate binary.

## Usage

After installation, the `loadout` command will be available in your shell:

```bash
loadout --help
```

## Updating

To update to the latest version:

```bash
brew update
brew upgrade loadout
```

## Uninstallation

```bash
brew uninstall loadout
brew untap noheltcj/loadout
```

## Formula Development

The formula is located at `Formula/loadout.rb` and supports multi-architecture installation using Homebrew's `on_macos` and `on_linux` DSL blocks.

### Configuring a local tap

If you've already setup the remote tap or installed loadout:

```bash
# Remove existing installation if necessary
brew uninstall loadout

# Untap the existing remote tap
brew untap noheltcj/loadout
```

To setup a local tap, execute this from the root directory of the cloned project:

```bash
brew tap noheltcj/loadout ./
```

### Testing the Formula Locally

_Note: you must have a tap created from local sources (see above section); otherwise your local changes to the formula won't be executed._

```bash
# Install from local tap
brew install loadout

# Run formula tests
brew test loadout

# Audit the formula
brew audit --strict loadout
```

## Release Process

This is done almost entirely automatically with the exception of requiring code-owner approval of a bot-generated pull request created on each release.

## Support

For issues, feature requests, or contributions, please visit the [main repository](https://github.com/noheltcj/loadout).
