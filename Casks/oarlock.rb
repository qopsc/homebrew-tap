cask "oarlock" do
  arch arm: "arm64", intel: "x64"

  # version and sha256 are updated by qopsc/oarlock's homebrew.yml workflow on each release.
  version "0.1.0"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000002"

  url "https://github.com/qopsc/oarlock/releases/download/v#{version}/oarlock-macos-#{arch}.dmg",
      verified: "github.com/qopsc/oarlock/"
  name "Oarlock"
  desc "Terminal-first AI workspace"
  homepage "https://oarlock.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Oarlock.app"
  binary "#{appdir}/Oarlock.app/Contents/MacOS/oarlock-cli", target: "oarlock"

  zap trash: [
    "~/Library/Application Support/consulting.quantumops.oarlock",
    "~/Library/Caches/consulting.quantumops.oarlock",
    "~/Library/Preferences/consulting.quantumops.oarlock.plist",
    "~/Library/Saved Application State/consulting.quantumops.oarlock.savedState",
    "~/Library/WebKit/consulting.quantumops.oarlock",
  ]
end
