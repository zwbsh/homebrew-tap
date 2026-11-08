# ZWB.SH Homebrew tap

These files are generated automatically after each release; don't edit them by hand, the next release overwrites
them.

```sh
brew install zwbsh/tap/agentjail        # agentjail, Linux x86_64 and aarch64
brew install --cask zwbsh/tap/zwbsh     # the ZWB.SH desktop app, macOS 13+
```

| | What | Docs |
|---|---|---|
| `agentjail` | Deny-by-default sandbox for AI coding agents (Linux; needs Landlock and user namespaces) | https://zwb.sh/docs/agentjail/install/ |
| `zwbsh` (cask) | The ZWB.SH desktop app; it keeps itself up to date | https://zwb.sh/download/ |

Files come from zwb.sh/dl/ and zwb.sh/download/, and Homebrew checks each against the SHA-256 here.
Security issues: https://zwb.sh/.well-known/security.txt
