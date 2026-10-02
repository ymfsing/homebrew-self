cask "opensurge" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.4"
  sha256 arm:   "9c46fb7c80bc06e09996d93f54aaf80703b633ea423ab56bfb0b861a6ef19c5a",
         intel: "a251ac105b51d11242e960df96a88624cc653d8c4b29b3eea1d96bd870f9ef8a"

  url "https://github.com/YTwsy/OpenSurge-for-Mac/releases/download/v#{version}/OpenSurge-for-Mac-#{version}-#{arch}-unsigned.pkg"
  name "OpenSurge"
  desc "Surge-style whole-home gateway and control plane for macOS with IPv4/IPv6 support— mihomo TUN, dnsmasq-powered DHCP/DNS, per-device routing, and an agent-friendly validation workspace."
  homepage "https://github.com/YTwsy/OpenSurge-for-Mac"

  depends_on :macos
  pkg "OpenSurge-for-Mac-#{version}-#{arch}-unsigned.pkg"

  # zap trash: [
  #       "~/Library/Preferences/com.company.peazip.plist",
  #       "~/Library/Saved Application State/com.company.peazip.savedState",
  #     ]
end
