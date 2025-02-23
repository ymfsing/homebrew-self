cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.3.0"
  sha256 arm:   "265999996ad1ecfaaacad2a2ac0805200e6957790fb1bd039f0b0b4b7e439b4e",
         intel: "8f634e9ca15dbf09ca470cc16039da11059f8bd369993e675fa57cfc79f23b0c"

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
