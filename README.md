# qopsc/homebrew-tap

Homebrew tap for [Quantum Ops Consulting](https://quantumops.consulting) software.

```sh
brew install qopsc/tap/oarlock
```

| Cask | Description |
| --- | --- |
| [`oarlock`](Casks/oarlock.rb) | [Oarlock](https://oarlock.sh), the terminal-first AI workspace. Also links the `oarlock` CLI. |

The `oarlock` cask is bumped automatically when a release is published in [qopsc/oarlock](https://github.com/qopsc/oarlock) (its `homebrew.yml` workflow). Until the first release is published, the cask holds placeholder checksums and won't install.
