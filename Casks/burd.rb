cask "burd" do
  version "1.9.0"

  on_arm do
    sha256 "79d097b9a730044e78d3b2a6575e45e2b0b59bb6e2c5c4c24c57ec2f46cad98f"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "bf655c0502b6e6d55919459a8025930e5e55b75bd4d504b546d37831aaaec92e"

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
