cask "kubekubedashdash" do
  version "1.33.0"
  sha256 "e5fbf055f5ea32a4e379f06092d5e3b605276f9d2b8850761cf983e791537fe5"

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
