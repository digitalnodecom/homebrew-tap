cask "burd" do
  version "1.8.0"

  on_arm do
    sha256 "6f3f9cedd4dc90edbd2d62f94768cc9f5c29ca9c264db8b43f75c2e53b739648"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "3ab02bcbc250ebe98e6a20f1001393e509b6aab14ad15c0f85f6f7f1b8e3599b"

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
