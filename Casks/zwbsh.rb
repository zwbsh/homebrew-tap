# Generated automatically after each ZWB.SH release. Edits here are overwritten.
cask "zwbsh" do
  version "0.2.28"
  sha256 "29cc00dcd47f68f47bfb5e8ab67dba68adf0072e0a8f9c7b09a833f84a1accf5"

  url "https://zwb.sh/download/desktop/files/0.2.28/ZWB.SH-0.2.28-macos.dmg"
  name "ZWB.SH"
  desc "Pull request reviews, insights and repositories from ZWB.SH"
  homepage "https://zwb.sh/download/"

  livecheck do
    url "https://zwb.sh/download/desktop/downloads.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app checks zwb.sh for signed updates and installs them itself.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "ZWB.SH.app"

  zap trash: [
    "~/Library/Application Support/sh.zwb.rune",
    "~/Library/Preferences/sh.zwb.rune.plist",
    "~/Library/Saved Application State/sh.zwb.rune.savedState",
    "~/Library/Application Support/sh.zwb.app",
    "~/Library/Caches/sh.zwb.app",
    "~/Library/Preferences/sh.zwb.app.plist",
    "~/Library/Saved Application State/sh.zwb.app.savedState",
    "~/Library/WebKit/sh.zwb.app",
  ]

  caveats <<~EOS
    ZWB.SH isn't notarized by Apple yet, so macOS stops it the first time it opens.
    Open it once, then go to System Settings, Privacy & Security, and click
    "Open Anyway" next to ZWB.SH. After that it opens normally and updates itself.
  EOS
end
