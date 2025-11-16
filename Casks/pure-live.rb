cask "pure-live" do

  version "2.1.0"
  sha256 :no_check

  url "https://github.com/aydomini/Pure-Live/releases/download/v#{version}/PureLive-macOS-#{version}.dmg"
  name "Pure Live"
  desc "第三方直播播放器，支持多个主流直播平台的视频流播放。"
  homepage "https://github.com/aydomini/Pure-Live"

  app "Pure-Live.app"

end
