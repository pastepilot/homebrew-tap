cask "pastepilot" do
  version "1.0.2"
  sha256 "5eee649f655e68762c5eea1882d886e623b8e9ca072ae59d9609e475c79feff1"

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
