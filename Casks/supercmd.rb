cask "supercmd" do

  version "1.0.22"
  sha256 "8a034268501db16ac130853505d6d82c9e2f07e6cd929bb316d8fe3085f38f86"

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
