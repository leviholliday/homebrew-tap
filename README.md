# Homebrew tap for leviholliday projects

This tap is the central place for all Homebrew packages for my projects.

Use it as a general-purpose repository for:

- CLI tools in `Formula/`
- macOS apps in `Casks/`
- project-specific install definitions that belong to their own project, not inside that project repo

## Install the tap

```bash
brew tap leviholliday/tap
```

## Install a package

For a CLI tool:

```bash
brew install leviholliday/tap/<formula-name>
```

For a macOS app/cask:

```bash
brew install --cask leviholliday/tap/<cask-name>
```

## Current packages

- `glideball` (cask)

## Recommended pattern

- Put the actual project source code in the project repo
- Put its Homebrew install definition here in the tap
- Keep this tap as the single place for any tool or app I want to install with Homebrew across projects

## Example

```bash
brew tap leviholliday/tap
brew install --cask leviholliday/tap/glideball
```
