cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.2.0"
  sha256 arm:   "4116f990e017ed2aaf4283338ee957feb5a7df2aabcf49a5ee16ec863429817e",
         intel: "7783e6c6fc5072526fc680b1addbfe39203cb6fc170cfe23b82a36d3052899a3"

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
