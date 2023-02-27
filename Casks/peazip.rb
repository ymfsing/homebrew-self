cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.1.0"
  sha256 arm:   "6bdb9c6f93f8b895cc810ddd4d77c7292f2e61364908fe1c4227917fd5a551f5",
         intel: "108cde1885750d78bbd33f9cc46ea09278a0bc87e1cae6e0686027af7fac4e0f"

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
