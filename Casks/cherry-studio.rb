cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.9.4"
  sha256 :no_check
  # sha256 arm:   "cef7244f33824ed0693c04d2158bdf9e6c0db5d0ba34084b3061945412dda60c",
  #        intel: "5989f7990f57e6d77bd9b896f978cb73cb71e253e0795e7c2b60691de7548956"

  url "https://github.com/kangfenmao/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{arch}.dmg",
      verified: "github.com/kangfenmao/cherry-studio/"
  name "Cherry Studio"
  desc "Cherry Studio is a desktop client that supports for multiple LLM providers"
  homepage "https://cherry-ai.com/"

  # livecheck do
  #   url :url
  #   regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$/i)
  #   strategy :github_latest
  # end

  # auto_updates true
  depends_on macos: ">= :catalina"

  app "Cherry Studio.app"

  # zap trash: [
  #       "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
  #       "~/Library/Application Support/Follow",
  #       "~/Library/Logs/Follow",
  #       "~/Library/Preferences/is.follow.plist",
  #       "~/Library/Saved Application State/is.follow.savedState",
  #     ]
end
