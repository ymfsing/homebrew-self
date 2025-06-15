cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.5.0"
  sha256 arm:   "fa120c735680c3ae9ebbd3e1ddf0933eab53dea20ff5862a543154efea397ecf",
         intel: "49e365c7e71dc74e27d97f5bb73a2312a9b97ee4278e1032fe7f4f4080a9cdc3"

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
