cask "pastepilot" do
  version "1.0.0"
  sha256 "d4c73461b8bc5722ba01f86ff93637a6c93d60aba70fa4a518ac556a9f46b281"

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
