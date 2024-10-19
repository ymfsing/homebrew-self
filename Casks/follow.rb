cask "follow" do
  version "Nightly 0.0.1"
  sha256 :no_check

  url "https://github.com/RSSNext/Follow/releases/download/nightly-0.0.1-nightly.20241018/Follow-0.0.1-nightly.20241018-macos-universal.dmg"
  name "Follow"
  desc "Next generation information browser."
  homepage "https://github.com/RSSNext/Follow"

  app "follow.app", target: "Follow.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]

end
