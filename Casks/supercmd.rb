cask "supercmd" do

  version "1.0.13"
  sha256 "6835efe26c57a4c2fa83a4289fd15f5cc0119ff1d1af403d02d172d0b8b88117"

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
