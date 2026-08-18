cask "burd" do
  version "1.11.1"

  on_arm do
    sha256 "e092fc9ff0e84efc1007241d28e6fbe3018d147929d2e90f2c53489044cb3cdc"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ca4553dda5e0b0184f3b1e12628ccd48164e22f2176b15c94a9be63b05c6b301"

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
