cask "burd" do
  version "1.11.0"

  on_arm do
    sha256 "35aa1a848893fe5e8f863747d935126265f1ccb442c29ad7d1e670804c5263e6"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "f6c444908fe8878cb6589246927aaefb4d3622297f3bea5b0e272ce27ce632ec"

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
