# beytullah-gunduz/homebrew-tap

Homebrew casks for two desktop apps:

| App | Install |
|-----|---------|
| [KubeKubeDashDash](https://github.com/beytullah-gunduz/kubekubedashdash), a Kubernetes dashboard | `brew install --cask beytullah-gunduz/tap/kubekubedashdash` |
| [Container Dashboard](https://github.com/beytullah-gunduz/container-dashboard), a dashboard for Docker and other container engines | `brew install --cask beytullah-gunduz/tap/container-dashboard` |

`brew upgrade` then keeps them up to date. Keep the `beytullah-gunduz/tap/` prefix: Homebrew trusts a third-party cask only when you name it in full.

- **Apple Silicon only.** The DMGs are not built for Intel Macs.
- **First launch.** The apps aren't notarized yet, so macOS blocks their first launch, and again after each upgrade. Open the app once, then click **Open Anyway** in System Settings → Privacy & Security.
- **Installed the DMG before?** Delete the app from `/Applications` first (`KubeKubeDashDash.app` or `ContainerDashboard.app`), because Homebrew won't replace it. Your settings are kept.

Each cask is updated by its app's release workflow after every stable release. To change one, edit the template in that app's repository rather than here: [`packaging/homebrew/kubekubedashdash.rb`](https://github.com/beytullah-gunduz/kubekubedashdash/tree/main/packaging/homebrew) or [`packaging/homebrew/container-dashboard.rb`](https://github.com/beytullah-gunduz/container-dashboard/tree/main/packaging/homebrew).
