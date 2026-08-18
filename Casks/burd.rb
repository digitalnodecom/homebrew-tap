cask "burd" do
  version "1.11.8"

  on_arm do
    sha256 "57fa865427eb2fd6027c8ea385767d77e364ddf2c8faf146db74e28d5a8bf975"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7a257ab6725e2efb8b3f4b149cca813461c6b4815ce9d0b13797da6312196245"

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
