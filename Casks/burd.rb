cask "burd" do
  version "1.11.4"

  on_arm do
    sha256 "1ffa2bd5f47dbf039dafa8b6775daaad4a8ece7d5da2249f51b2e542a6689703"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "a2e9bdab0085fcccfbd26e25789384e93977507fde2ea5c9b6c244acc74f82b1"

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
