class OrgRemindersCli < Formula
  version "v0.0.1"
  sha256 "47184f883dd664b9755b75968dd4902f0586f1fd4602c5ec0ba073fa20a0589a"

  desc "A CLI tool for syncing OS X Reminders with Emacs org-mode"
  homepage "https://github.com/ginqi7/org-reminders-cli"
  url "https://github.com/ginqi7/org-reminders-cli/releases/download/#{version}/org-reminders.tar.gz"

  def install
    bin.install "org-reminders"
  end
end
