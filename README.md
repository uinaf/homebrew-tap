![homebrew-tap — Homebrew formulae for uinaf.](https://uinaf.dev/og/banner/homebrew-tap.png)

# uinaf/homebrew-tap

Homebrew tap for uinaf CLI tools.

## Install

```bash
brew tap uinaf/tap
```

## Available casks

```bash
brew install --cask slopguard
brew install --cask slopwake
```

For direct binary and source install instructions, see each tool's repository README.

## Verification

```bash
mise run verify
mise run --force verify
```

The default command reuses cached Homebrew audit and workflow-check results.
Use the forced form after deletions, renames, untracked files, or broad changes.
