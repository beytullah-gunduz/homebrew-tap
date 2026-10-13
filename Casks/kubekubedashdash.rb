cask "kubekubedashdash" do
  version "1.34.0"
  sha256 "45dcc94145e79f7a18f7badc540b443b33e93eb735a1f0ad2940154f73fded91"

  url "https://github.com/beytullah-gunduz/kubekubedashdash/releases/download/v#{version}/KubeKubeDashDash-#{version}.dmg"
  name "KubeKubeDashDash"
  desc "Desktop Kubernetes dashboard"
  homepage "https://github.com/beytullah-gunduz/kubekubedashdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The release DMG is built on an Apple Silicon runner only.
  depends_on arch: :arm64
  depends_on :macos

  app "KubeKubeDashDash.app"

  zap trash: "~/Library/Application Support/KubeKubeDashDash"
end
