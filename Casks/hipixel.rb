cask "hipixel" do

  version "v0.3.1"
  sha256 :no_check

  url "https://github.com/okooo5km/HiPixel/releases/download/#{version}/HiPixel-#{version}.dmg"
  name "HiPixel"
  desc "HiPixel is a native macOS application for AI-powered image super-resolution, built with SwiftUI and leveraging Upscayl's powerful AI models."
  homepage "https://github.com/okooo5km/HiPixel"

  app "HiPixel.app"

  # zap trash: [
  #       "~/Library/Caches/com.seewo.easinote5.mac",
  #       "~/Library/Caches/com.seewo.easinote5.mac.Shiplt",
  #       "~/Library/Preferences/com.seewo.easinote5.mac.plist",
  #       "~/Library/Saved Application State/com.seewo.easinote5.mac.savedState",
  #     ]
end
