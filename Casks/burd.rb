cask "burd" do
  version "1.11.5"

  on_arm do
    sha256 "89e36b9d765b940977b9d45ea05c211b79e609ced2c9076f1869773996299de2"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "15e08af98b05ccc579691372c7656f33fc5d607fb8422592c264c973be76d76e"

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
