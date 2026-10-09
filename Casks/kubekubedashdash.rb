cask "kubekubedashdash" do
  version "1.29.0"
  sha256 "1ec15e7ba39014412df2b23ad447987445706b2b196631ab8589c04e59f93ad2"

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
