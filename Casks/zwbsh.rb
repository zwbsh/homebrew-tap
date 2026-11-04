# Generated automatically after each ZWB.SH release. Edits here are overwritten.
cask "zwbsh" do
  version "0.1.6"
  sha256 "6fa92b82f18d7cc1a018951e3a461db40fa210cde32f22bf368e323ed23e13dd"

  url "https://zwb.sh/download/files/0.1.6/ZWB.SH_0.1.6_universal.dmg"
  name "ZWB.SH"
  desc "Pull request reviews, insights and repositories from ZWB.SH"
  homepage "https://zwb.sh/download/"

  livecheck do
    url "https://zwb.sh/download/downloads.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app checks zwb.sh for signed updates and installs them itself.
  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ZWB.SH.app"

  zap trash: [
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
