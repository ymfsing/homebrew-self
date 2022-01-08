cask "ttf-lxgw-wenkai-regular" do
  version "1.113"
  sha256 :no_check

  url "https://github.com/lxgw/LxgwWenKai/releases/download/v#{version}/LXGWWenKai-Regular.ttf"
  name "LXGW WenKai Regular"
  desc "An open-source Chinese font derived from Fontworks' Klee One."
  homepage "https://github.com/lxgw/LxgwWenKai"

  font "LXGWWenKai-Regular.ttf"

  caveats do
    free_license "https://github.com/lxgw/LxgwWenKai/raw/v#{version}/SIL_Open_Font_License_1.1.txt"
  end
end
