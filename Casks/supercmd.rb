cask "supercmd" do

  version "1.0.7"
  sha256 "1d2e390ff6fa82e1cd72ef4455abed00a5ff9e769a7bf2ec29e487bb632c0bd5"

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
