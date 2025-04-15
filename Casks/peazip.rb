cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.4.0"
  sha256 arm:   "546686c6f592ffa65bcedd4b47e76487e9ec980301ca4d4f0d9cae02929ee6e0",
         intel: "0a7058c9cabc4be43809a55092c3f1f5fc3bc4bc2a3e7c275ed21a25a0c6d556"

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
