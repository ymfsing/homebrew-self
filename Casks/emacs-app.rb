cask 'emacs-app' do
  name 'Emacs'
  desc 'GNU Emacs text editor'
  homepage 'https://github.com/jimeh/emacs-builds'

  # https://github.com/jimeh/homebrew-emacs-builds/blob/main/Casks/emacs-app.rb
  # https://github.com/jimeh/homebrew-emacs-builds/blob/main/Casks/emacs-app-nightly.rb

  version '2025-04-14.a7f5d18.master'

  on_arm do
    sha256 'e3430942a8ea72529ad57e44158c2ffe90dda6dfe02595e316668e02d2826a28'
    url 'https://github.com/jimeh/emacs-builds/releases/download/Emacs.2025-04-14.a7f5d18.master/Emacs.2025-04-14.a7f5d18.master.macOS-11.arm64.dmg'
    depends_on macos: '>= :big_sur'
  end
  on_intel do
    sha256 'bb84f3a04ee05fc17a2d9078e79538279db1291c129d1658cf16f6c02915d812'
    url 'https://github.com/jimeh/emacs-builds/releases/download/Emacs.2025-04-14.a7f5d18.master/Emacs.2025-04-14.a7f5d18.master.macOS-11.x86_64.dmg'
    depends_on macos: '>= :big_sur'
  end

  livecheck do
    url 'https://github.com/jimeh/emacs-builds.git'
    strategy :git do |tags|
      tags.map do |tag|
        m = /^Emacs\.(\d{4}-\d{2}-01\.\w+\.master)$/.match(tag)
        next unless m

        m[1]
      end.compact
    end
  end

  conflicts_with(
    cask: %w[
      emacs-app-good
      emacs-app-monthly
      emacs-app-nightly
      emacs-app-nightly-28
      emacs-app-nightly-29
      emacs-app-pretest
      emacs
      emacs-nightly
      emacs-pretest
      emacs-mac
      emacs-mac-spacemacs-icon
    ],
    formula: %w[
      emacs
      emacs-mac
    ]
  )

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacs"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"
  binary "#{appdir}/Emacs.app/Contents/Resources/include/emacs-module.h",
         target: "#{HOMEBREW_PREFIX}/include/emacs-module.h"
  binary "#{appdir}/Emacs.app/Contents/Resources/site-lisp/subdirs.el",
         target: "#{HOMEBREW_PREFIX}/share/emacs/site-lisp/subdirs.el"

  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/ebrowse.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/emacs.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/emacsclient.1.gz"
  manpage "#{appdir}/Emacs.app/Contents/Resources/man/man1/etags.1.gz"

  zap trash: [
    '~/Library/Caches/org.gnu.Emacs',
    '~/Library/Preferences/org.gnu.Emacs.plist',
    '~/Library/Saved Application State/org.gnu.Emacs.savedState'
  ]
end
