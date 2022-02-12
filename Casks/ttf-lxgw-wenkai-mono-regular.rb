cask "ttf-lxgw-wenkai-mono-regular" do
  version "1.120"
  sha256 :no_check

  url "https://github.com/lxgw/LxgwWenKai/releases/download/v#{version}/LXGWWenKaiMono-Regular.ttf"
  name "LXGW WenKai Mono Regular"
  desc "An open-source Chinese font derived from Fontworks' Klee One."
  homepage "https://github.com/lxgw/LxgwWenKai"

  font "LXGWWenKaiMono-Regular.ttf"

  caveats do
    free_license "https://github.com/lxgw/LxgwWenKai/raw/v#{version}/SIL_Open_Font_License_1.1.txt"
  end
end
