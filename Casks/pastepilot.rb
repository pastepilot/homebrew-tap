cask "pastepilot" do
  version "1.0.4"
  sha256 "a4a00db5c1b636486e6c0f3138dcb6f814c452185967a11fcd0bc27c8392d28c"

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
