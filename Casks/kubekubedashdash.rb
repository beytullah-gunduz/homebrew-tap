cask "kubekubedashdash" do
  version "1.29.0"
  sha256 "9b286808996d0da9aa97090a8c731f627a55ae2700a58e37fdc76186ca6af673"

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
