cask "opensurge" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.1"
  sha256 arm:   "03121ff807d01b2f7077f92cfad8180a65d7f3efc8adabd8b6f911e1f420e106",
         intel: "5a4ef82aef845b283c07bb5aa77cfecd27010dfbd83fe144c34b478301304e0e"

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
