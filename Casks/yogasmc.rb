cask "yogasmc" do
  version "1.5.3"
  sha256 :no_check

  url "https://github.com/zhen-zen/YogaSMC/releases/download/#{version}/YogaSMC-App-Release.dmg"
  name "YogaSMC"
  desc "ACPI driver for OEM hardware."
  homepage "https://github.com/zhen-zen/YogaSMC"

  # auto_updates true

  app "YogaSMCNC.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
