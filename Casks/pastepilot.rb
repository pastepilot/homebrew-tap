cask "pastepilot" do
  version "1.0.3"
  sha256 "e72bff0ef4041aff8d1aade5d2a622737fb0eb3a9fd84ea53d27b576fcc0e59d"

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
