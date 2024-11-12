cask "copi" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/s1ntoneli/Copi/releases/download/#{version}/Copi-#{version}.dmg"
  name "Copi"
  desc "A Secure Alternative to macOS Clipboard"
  homepage "https://github.com/s1ntoneli/Copi"

  app "Copi.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
