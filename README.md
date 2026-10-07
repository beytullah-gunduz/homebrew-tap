# beytullah-gunduz/homebrew-tap

Homebrew casks for [KubeKubeDashDash](https://github.com/beytullah-gunduz/kubekubedashdash), a desktop Kubernetes dashboard.

```bash
brew install --cask beytullah-gunduz/tap/kubekubedashdash
```

`brew upgrade` then keeps it up to date. Keep the `beytullah-gunduz/tap/` prefix: Homebrew trusts a third-party cask only when you name it in full.

- **Apple Silicon only.** The DMG is not built for Intel Macs.
- **First launch.** The app isn't notarized yet, so macOS blocks its first launch, and again after each upgrade. Open it once, then click **Open Anyway** in System Settings → Privacy & Security.
- **Installed the DMG before?** Delete `/Applications/KubeKubeDashDash.app` first, because Homebrew won't replace it. Your settings are kept.

The cask is updated by the KubeKubeDashDash release workflow after every stable release. To change it, edit [`packaging/homebrew/kubekubedashdash.rb`](https://github.com/beytullah-gunduz/kubekubedashdash/tree/main/packaging/homebrew) in the main repository rather than here.
