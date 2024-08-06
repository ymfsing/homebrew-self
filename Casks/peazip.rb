cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.9.0"
  sha256 arm:   "db263bd35d3fe5da4b5bb0eebef4a9209c2a371a8c2c495cf5c73a8ac3db1afc",
         intel: "8b2eb492396ceab34860c53f3611a126c576198377dbbb149b9329ea298c5545"

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
