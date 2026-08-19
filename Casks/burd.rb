cask "burd" do
  version "1.13.1"

  on_arm do
    sha256 "8a338dca43943689b24b581ed0b1028a1b62d0c7198afd4dd5859c14f5f9c6d6"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "82c68fbb4cd9774cba37f08f8daef6669dd7d8d15f1a280a04e91a5182772eee"

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
