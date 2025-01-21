class EmacsLspBooster < Formula
  desc "Emacs LSP performance booster"
  homepage "https://github.com/blahgeek/emacs-lsp-booster"
  version "v0.2.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blahgeek/emacs-lsp-booster/releases/download/#{version}/emacs-lsp-booster_#{version}_x86_64-apple-darwin.zip"
    sha256 "4ab44cc3f95a1d4b7bc8b70042daa8e001141d7d58777cf5dc3bfdb030ebb43b"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/blahgeek/emacs-lsp-booster/releases/download/#{version}/emacs-lsp-booster_#{version}_x86_64-apple-darwin.zip"
    sha256 "4ab44cc3f95a1d4b7bc8b70042daa8e001141d7d58777cf5dc3bfdb030ebb43b"
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "emacs-lsp-booster"
  end

  # on_macos do
  #   on_intel do
  #     url "https://github.com/blahgeek/emacs-lsp-booster/releases/download/#{version}/emacs-lsp-booster_#{version}_x86_64-apple-darwin.zip"
  #     sha256 "4ab44cc3f95a1d4b7bc8b70042daa8e001141d7d58777cf5dc3bfdb030ebb43b"
  #
  #     def install
  #       bin.install "emacs-lsp-booster"
  #     end
  #   end
  # end

  test do
    system "#{bin}/emacs-lsp-booster", "--help"
  end

end
