cask "easinote" do
  version "0.8.0"
  sha256 :no_check

  url "https://imlizhi-store-https.seewo.com/EasiNote_Mac_0.8.0.6278.1d5(20230413173044).dmg"
  name "EasiNote"
  desc "为互动教学而生。"
  homepage "https://easinote.seewo.com/"

  # auto_updates true

  app "希沃白板.app"

  zap trash: [
        "~/Library/Caches/com.seewo.easinote5.mac",
        "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
        "~/Library/Preferences/com.seewo.easinote5.mac.plist",
        "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
      ]
end
