cask "org-protocol" do

  version "1.0"
  sha256 :no_check

  url "https://github.com/ymfsing/files/raw/main/org-protocol.zip"
  name "org-protocol"
  desc "Org protocol is a tool to trigger custom actions in Emacs from external applications. "
  homepage "https://orgmode.org/manual/Protocols.html"

  app "org-protocol.app"

end
