cask 'upscayl' do
  version '2.8.6'
  sha256 :no_check

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/Upscayl-#{version}-mac.dmg"
  name 'Upscayl'
  desc 'Free and Open Source AI Image Upscaler for Linux, MacOS and Windows built with Linux-First philosophy.'
  homepage 'https://github.com/upscayl/upscayl'

  app 'Upscayl.app'

  postflight do
    set_permissions "#{appdir}/Upscayl.app/Contents/Resources/bin/upscayl", 'u+x'
  end

  zap trash: [
        '~/Library/Application Support/Upscayl',
        '~/Library/Preferences/org.upscayl.app.plist',
        '~/Library/Saved Application State/org.upscayl.app.savedState'
      ]
end
