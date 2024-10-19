cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.9.1"
  sha256 arm:   "82a3a7f1eba405f032c0a08d5e60a83c019bf8624fdd03020f75f4882de91bfe",
         intel: "4266369de61adf72a21cbe9b36e79a63d54b0423bf8aaabb0c99c7c7dba4c548"

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
