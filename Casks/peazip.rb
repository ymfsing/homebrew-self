cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.5.0"
  sha256 arm:   "3855825eaeb983c1544aa0bc9dfb4efcc3111e52ff365ea2c4336415b730b45d",
         intel: "db7c351efa3f464898c79a90986e043b980ad35412ae22f8f2ec34678f11a1f4"

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
