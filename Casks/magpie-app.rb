cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1184"
  sha256 arm:   "33f3eca4227a79295f176fb152c2a591bc5e4c102d288e723fe8b21d097d6d37",
         intel: "a00d76f49fa5cd6385a660fc12d4e80b57784a729f1921e55cbddcb724ae8254"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
