cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.7.0"
  sha256 arm:   "257ce2665821f1514d8802cbdca98001c15ace662732545690f1ebb44227f4f6",
         intel: "2857d3774d8e24c0d35f9c034cf127c333da01dbd63d180d25e89cb46cb21845"

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
