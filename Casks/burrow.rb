cask "burrow" do

  # https://github.com/caezium/homebrew-tap/blob/main/Casks/burrow.rb
 
  version "0.14.0"
  sha256 "3e5d5d36ccb6292ff69451a2f88a748f6f8a16687bb1c1bae2e013723062ef2d"

  url "https://github.com/caezium/Burrow/releases/download/v#{version}/Burrow-#{version}.zip"
  name "Burrow"
  desc "Free, open-source native GUI for the Mole CLI"
  homepage "https://github.com/caezium/Burrow"

  auto_updates true

  # Homebrew 5.1.11 (May 2026) changed `depends_on macos: :sonoma` from
  # "exactly Sonoma" to "Sonoma or newer" and deprecated the `">= :sonoma"`
  # string form (a hard error under HOMEBREW_DEVELOPER). Branch so both old
  # and new Homebrew get "macOS 14 or newer" with no warning.
  # TODO: drop the legacy branch once pre-5.1.11 Homebrew is rare (~2027).
  if Version.new(HOMEBREW_VERSION.split("-").first) >= Version.new("5.1.11")
    depends_on macos: :sonoma
  else
    depends_on macos: ">= :sonoma"
  end

  app "Burrow.app"

  zap trash: [
    "~/Library/Application Support/Burrow",
    "~/Library/Preferences/dev.caezium.Burrow.plist",
  ]
end
