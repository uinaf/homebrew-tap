![homebrew-tap — Homebrew formulae for uinaf.](https://uinaf.dev/og/banner/homebrew-tap.png)

# uinaf/homebrew-tap

Homebrew tap for uinaf CLI tools.

## Install

```bash
brew tap uinaf/tap
```

## Casks

Each file in [`Casks/`](Casks/) is one cask:

```bash
brew install --cask slopwake
```

Each tool's own README covers binary and source installs.

## Verification

```bash
mise run verify
mise run --force verify
```

The default command reuses cached Homebrew audit and workflow-check results.
Use the forced form after deletions, renames, untracked files, or broad changes.
