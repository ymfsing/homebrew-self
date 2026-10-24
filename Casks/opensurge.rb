cask "opensurge" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "e11a5d73c4ec96145b4d3e8812e24bfc259543ac1144c379279e80fd1c4d3f0c",
         intel: "033590dcab74515deb7ac27c05265704d649568a5c62cd027cdb2955c711e252"

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
