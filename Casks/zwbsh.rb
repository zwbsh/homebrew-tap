# Generated automatically after each ZWB.SH release. Edits here are overwritten.
cask "zwbsh" do
  version "0.2.30"
  sha256 "42ee4b62f7130260f9041cf2d12c1612b4b6bbb15ee9ff232bea061a76801842"

  url "https://zwb.sh/download/desktop/files/0.2.30/ZWB.SH-0.2.30-macos.dmg"
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
