cask "FlowDown" do
  version "1.2.42"
  sha256 :no_check

  url "https://github.com/Lakr233/FlowDown-App/releases/download/#{version}/FlowDown-v#{version}.zip"
  name "FlowDown"
  desc "FlowDown is a blazing fast and smooth client app for using AI/LLM."
  homepage "https://github.com/Lakr233/FlowDown-App"

  # auto_updates true

  app "FlowDown.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
