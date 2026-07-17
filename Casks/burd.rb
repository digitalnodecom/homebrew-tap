cask "burd" do
  version "1.9.2"

  on_arm do
    sha256 "a331bfd6abc5fbf5349521ec31c0df2f544ca62cc4d02e6e220870a931a62e1c"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d76506061376be79768114d1e3d2c03463b0efa5d15f2e14703da823dac4c5b5"

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
