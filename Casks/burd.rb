cask "burd" do
  version "1.10.0"

  on_arm do
    sha256 "85823ae19080f28af7b16c8728665ed4b70b31560dee4be7c867190a97ee5322"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "6caef103fdd085f93c7c9b8490869b4dfad351056b82b51bc9d3538e5a09ce9a"

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
