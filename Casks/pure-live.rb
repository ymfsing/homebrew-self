cask "pure-live" do

  version "2.0.11"
  sha256 :no_check

  url "https://github.com/liuchuancong/pure_live/releases/download/v#{version}/PureLive-#{version}+22-macOS.dmg"
  name "Pure Live"
  desc "第三方直播播放器，支持多个主流直播平台的视频流播放。"
  homepage "https://github.com/liuchuancong/pure_live"

  app "PureLive.app"

end
