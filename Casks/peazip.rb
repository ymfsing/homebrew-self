cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "10.6.1"
  sha256 arm:   "ce802607c3480bcb69a898a811c307461fcea0bf9a0e963a98eb712ac78f5c7e",
         intel: "7229a8482ee88b465d90591d19438572a8ebaee6b5a22c781ef6d7b65916d4c2"

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
