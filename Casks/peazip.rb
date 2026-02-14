cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.9.0"
  sha256 arm:   "f65895eda795dbcf482ba507ba98c0f40ea54849c919c59ef7a9cff19a5541dc",
         intel: "eacf20bdf47fbd6f360cc41220916426758841054c19881dc80bc9e3c5760b60"

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
