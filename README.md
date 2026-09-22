![homebrew-tap — Homebrew formulae for uinaf.](https://uinaf.dev/og/banner/homebrew-tap.png)

# uinaf/homebrew-tap

Homebrew tap for uinaf CLI tools.

## Install

```bash
brew tap uinaf/tap
```

## Available formulae and casks

```bash
brew install tccutil-rs
brew install --cask slopguard
brew install --cask slopwake
```

For direct binary and source install instructions, see each tool's repository README.

## Verification

```bash
mise run verify
mise run --force verify
```

The default command restores valid Homebrew audit and workflow-check results.
Use the forced form after deletions, renames, untracked files, or broad changes.
Pull requests audit changed formulae and casks; main and manual CI runs force the
complete tap audit. GoReleaser formulae declare an explicit version, so the
version audit skips them and runs on every other formula and cask.
Audits are developer commands, so each task turns developer mode back off on
exit; otherwise `brew update` would track Homebrew `main` instead of stable tags.
