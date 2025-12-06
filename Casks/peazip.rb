cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.8.0"
  sha256 arm:   "c94a5678b6bbe7c69ae5dba2193d2879efdeeef8a82900edd9507884c4f1be7a",
         intel: "812e9392e9a2da71969ba356956d6fd4936fa546de73912351b6e64cc477ac54"

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
