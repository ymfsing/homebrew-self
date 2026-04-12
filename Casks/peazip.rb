cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "11.0.0"
  sha256 arm:   "a9fc877533dcbb00a4e85a8c05579c3fc54f6391d540d58d7863f84f3c6170e4",
         intel: "c333a29a546c6aa831a2c6bc9947105790e8fa4a874c2b4fb795a6b940c1fffe"

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
