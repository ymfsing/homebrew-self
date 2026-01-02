cask "pure-live" do

  version "2.0.11"
  sha256 :no_check

  url "https://github.com/liuchuancong/pure_live/releases/download/v#{version}/PureLive-#{version}+22-macOS.dmg"
  name "Pure Live"
  desc "纯粹直播:哔哩哔哩/虎牙/斗鱼/快手/抖音/网易cc/M38自定义源应有尽有。"
  homepage "https://github.com/liuchuancong/pure_live"

  app "纯粹直播.app"

end
