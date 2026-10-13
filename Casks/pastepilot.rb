cask "pastepilot" do
  version "1.0.1"
  sha256 "93b3fa515d2ea6f090aaefb74c6a8f96ce6d8d2abc9d1f085060387127ed9489"

  url "https://releases.pastepilot.com/downloads/#{version}/PastePilot-#{version}.dmg"
  name "PastePilot"
  desc "Clipboard manager with history, snippets, and text tools"
  homepage "https://pastepilot.com/"

  livecheck do
    url "https://releases.pastepilot.com/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "PastePilot.app"
end
