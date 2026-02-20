# uinaf/homebrew-tap

Homebrew tap for uinaf command-line tools.

## Install (order: Homebrew → Direct binary download → Source build)

### healthd

1) **Homebrew**

```bash
brew tap uinaf/tap
brew install healthd
```

2) **Direct binary download**

```bash
VERSION="v0.1.0"
ARCH="$(uname -m)"
case "$ARCH" in
  arm64) ASSET="healthd_${VERSION}_darwin_arm64.tar.gz" ;;
  x86_64) ASSET="healthd_${VERSION}_darwin_amd64.tar.gz" ;;
  *) echo "unsupported arch: $ARCH"; exit 1 ;;
esac

BASE_URL="https://github.com/uinaf/healthd/releases/download/${VERSION}"
curl -fL "${BASE_URL}/${ASSET}" -o "${ASSET}"
curl -fL "${BASE_URL}/checksums.txt" -o checksums.txt
grep "  ${ASSET}$" checksums.txt | shasum -a 256 -c -
tar -xzf "${ASSET}"
install -m 0755 healthd /usr/local/bin/healthd
healthd --version
```

3) **Source build**

```bash
go install github.com/uinaf/healthd@latest
healthd --version
```

### tccutil-rs

1) **Homebrew**

```bash
brew tap uinaf/tap
brew install tccutil-rs
```

2) **Direct binary download**

```bash
VERSION="v0.1.1"
ARCH="$(uname -m)"
case "$ARCH" in
  arm64) ASSET="tccutil-rs_${VERSION}_darwin-arm64.tar.gz" ;;
  x86_64) ASSET="tccutil-rs_${VERSION}_darwin-amd64.tar.gz" ;;
  *) echo "unsupported arch: $ARCH"; exit 1 ;;
esac

BASE_URL="https://github.com/uinaf/tccutil/releases/download/${VERSION}"
curl -fL "${BASE_URL}/${ASSET}" -o "${ASSET}"
curl -fL "${BASE_URL}/checksums.txt" -o checksums.txt
grep "  ${ASSET}$" checksums.txt | shasum -a 256 -c -
tar -xzf "${ASSET}"
install -m 0755 tccutil-rs /usr/local/bin/tccutil-rs
tccutil-rs --version
```

3) **Source build**

```bash
git clone https://github.com/uinaf/tccutil.git
cd tccutil
cargo build --release
install -m 0755 target/release/tccutil-rs /usr/local/bin/tccutil-rs
tccutil-rs --version
```