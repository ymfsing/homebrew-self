cask "supercmd" do

  version "1.0.12"
  sha256 "7f3a28f12801cff190d5e79394dd9c7c9ae87478f4f25d7f42f2d6cab7a5abdd"

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
