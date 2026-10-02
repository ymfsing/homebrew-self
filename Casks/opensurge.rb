cask "opensurge" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "e056c005dfe257b6eb9f6aeefd4fae6eb7e02940002b156422989789e3423814",
         intel: "d33e220bd86bc063ec4c96b35dbe73d8e7944259a0418fac4f7439dac45b37ba"

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
