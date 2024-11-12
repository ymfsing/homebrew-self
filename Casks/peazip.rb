cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.1.0"
  sha256 arm:   "4e109b8900c4127b8bb92c463f98a33a44650b328f3003424adff941fe071dcb",
         intel: "ed14c3279c8d10b67d3c850abf90ec300a38f3f5666bb67aba4d9c953411ae27"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg",
      verified: "github.com/peazip/PeaZip/"
  name "PeaZip"
  desc "Open source archive manager"
  homepage "https://peazip.github.io/"

  app "peazip.app", target: "PeaZip.app"

  zap trash: [
        "~/Library/Preferences/com.company.peazip.plist",
        "~/Library/Saved Application State/com.company.peazip.savedState",
      ]
end
