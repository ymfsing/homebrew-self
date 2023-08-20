cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.4.0"
  sha256 arm:   "9f1c361273fd2beda788a6b83a76186940bcbb9c2292bc9e1865603b9b50a28c",
         intel: "0892e81c36b643a76cf6fbea5f767bbbe395cd11a58beff9a34d2be437b2f88b"

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
