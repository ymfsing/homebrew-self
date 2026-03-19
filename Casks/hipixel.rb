cask "hipixel" do

  # https://github.com/okooo5km/homebrew-tap/blob/main/Casks/hipixel.rb

  version "0.4.3"
  sha256 "f8f21bc0b50d646a16ef3ac4dd5cd7454f734170dec0fee92b1125c05ce24a8d"

  url "https://releases.5km.tech/hipixel/HiPixel-v#{version}.dmg"
  name "HiPixel"
  desc "Image upscaling tool that makes images crystal clear"
  homepage "https://hipixel.5km.tech/"

  livecheck do
    url "https://releases.5km.tech/hipixel/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "HiPixel.app"

  zap trash: [
    "~/Library/Application Support/tech.5km.HiPixel",
    "~/Library/Preferences/tech.5km.HiPixel.plist",
    "~/Library/Saved Application State/tech.5km.HiPixel.savedState",
  ]
end
