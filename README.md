# Homebrew Tap for Loadout

This is the official Homebrew tap for [Loadout](https://github.com/noheltcj/loadout), a CLI tool for managing and composing AGENTS.md and equivalents by profile.

## Installation

### Install via Homebrew Tap

```bash
brew tap noheltcj/loadout-tap
brew install loadout
```

### One-liner Installation

```bash
brew install noheltcj/loadout-tap/loadout
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

### Testing the Formula Locally

```bash
# Install from local tap
brew install --build-from-source ./Formula/loadout.rb

# Run formula tests
brew test loadout

# Audit the formula
brew audit --strict loadout
```

## Release Process

This is done almost entirely automatically with the exception of requiring code-owner approval of a bot-generated pull request created on each release.

## Support

For issues, feature requests, or contributions, please visit the [main repository](https://github.com/noheltcj/loadout).
