cask "maccheck" do
  version "1.2"
  sha256 "71b2df7bb0de6d508b79320fc944102fcfcf982dcd9744290b3ff50a232af6e8"

  url "https://github.com/andyhuo520/MacCheck/releases/download/v#{version}/MacCheck-#{version}.dmg"
  name "MacCheck"
  desc "MacCheck"
  homepage "https://github.com/andyhuo520/MacCheck"

  app "MacCheck.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
