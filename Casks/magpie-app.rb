cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  # https://github.com/yetone/magpie-releases/blob/main/Casks/magpie-app.rb

  version "0.1.1402"
  sha256 arm:   "b6cc4687577176822d10648aee80aabeb01a8cdfca1d52ebf51831013d894288",
         intel: "bd7a9df83f82b2fe5908a0fce51fe3bc5442a2c400e64ef438a3bdd78ea4aca3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
