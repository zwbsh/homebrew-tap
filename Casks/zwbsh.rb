# Generated automatically after each ZWB.SH release. Edits here are overwritten.
cask "zwbsh" do
  version "0.1.8"
  sha256 "4fc5f0aec4af62230c42604bbc725ed26d0d8d33059d475d4ca2811dfb42879e"

  url "https://zwb.sh/download/files/0.1.8/ZWB.SH_0.1.8_universal.dmg"
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
