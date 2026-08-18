cask "burd" do
  version "1.11.3"

  on_arm do
    sha256 "a56f49814ffee6927b9edcadc8afac42dc2b3369ef0f6d00ce6476af415af2ba"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "26871bd2714da160669bc427668b7585eced2b360961dc567c9001ade5957594"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_x64.dmg"
  end

  name "Burd"
  desc "Local development environment manager"
  homepage "https://github.com/digitalnodecom/burd"

  depends_on macos: :big_sur

  app "Burd.app"

  zap trash: [
    "~/Library/Application Support/Burd",
    "~/Library/Logs/Burd",
  ]
end
