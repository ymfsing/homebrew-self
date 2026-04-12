cask "supercmd" do

  version "1.0.15"
  sha256 "12fa86a45a19d0652b1fa0782519d46c5e2f370908984844f19f222bca4a3f3e"

  url "https://github.com/SuperCmdLabs/SuperCmd/releases/download/#{version}/SuperCmd-#{version}.dmg"
  name "SuperCmd"
  desc "What Apple Intelligence should have been"
  homepage "https://github.com/SuperCmdLabs/SuperCmd"

  app "SuperCmd.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
