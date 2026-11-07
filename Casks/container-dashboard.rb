cask "container-dashboard" do
  version "1.4.0"
  sha256 "7bcbb7b599825f546d69f429773a023ee5b7a58e4f27ec02e20c0bc2a27683ac"

  url "https://github.com/beytullah-gunduz/container-dashboard/releases/download/v#{version}/ContainerDashboard-#{version}.dmg"
  name "Container Dashboard"
  desc "Desktop dashboard for Docker and other container engines"
  homepage "https://github.com/beytullah-gunduz/container-dashboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The release DMG is built on an Apple Silicon runner only.
  depends_on arch: :arm64
  depends_on :macos

  app "ContainerDashboard.app"

  zap trash: "~/Library/Application Support/container-dashboard"
end
