class EmacsLspBooster < Formula
  desc "Emacs LSP performance booster"
  homepage "https://github.com/blahgeek/emacs-lsp-booster"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/blahgeek/emacs-lsp-booster/releases/download/v0.2.1/emacs-lsp-booster_v0.2.1_x86_64-apple-darwin.zip"
      sha256 "4ab44cc3f95a1d4b7bc8b70042daa8e001141d7d58777cf5dc3bfdb030ebb43b"

      def install
        bin.install "emacs-lsp-booster"
      end
    end

        on_arm do
      url "https://github.com/blahgeek/emacs-lsp-booster/releases/download/v0.2.1/emacs-lsp-booster_v0.2.1_x86_64-apple-darwin.zip"
      sha256 "4ab44cc3f95a1d4b7bc8b70042daa8e001141d7d58777cf5dc3bfdb030ebb43b"

      def install
        bin.install "emacs-lsp-booster"
      end
    end
  end

  test do
    system "#{bin}/emacs-lsp-booster", "--help"
  end

end
