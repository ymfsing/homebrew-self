cask "vimac" do
  version "0.3.19"
  sha256 :no_check

  url "https://github.com/ymfsing/files/raw/main/Vimac_distribution.zip"
  name "Vimac"
  desc "Keyboard-driven navigation and control tool"
  homepage "https://vimacapp.com/"

  auto_updates true

  app "Vimac.app"

  zap trash: [
        "~/Library/Application Support/Vimac",
        "~/Library/Caches/dexterleng.vimac",
        "~/Library/Preferences/dexterleng.vimac.plist",
      ]
end
