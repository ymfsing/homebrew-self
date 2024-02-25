cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.7.1"
  sha256 arm:   "f5005c1e0dcb071e764669f1fbe60800e9fb352cd6bcceda828021d2be7ebe28",
         intel: "f1440ada8dd8be88b71c3e2788e1526ee845c619a4070dd3ac3fddef4e84020c"

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
