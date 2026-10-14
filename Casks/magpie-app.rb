cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  # https://github.com/yetone/magpie-releases/blob/main/Casks/magpie-app.rb

  version "0.1.1231"
  sha256 arm:   "c0a1ab3bc7b1b880289c10971cdd6e0853dba1a9305c30b8e8f67c24a8db6af6",
         intel: "9c0d63f04ba7735593031832557189598461748fac87ef690cbd843144978fbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
