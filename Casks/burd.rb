cask "burd" do
  version "1.14.0"

  on_arm do
    sha256 "d27e0214296a516af71bef0c43cbde61bb3a8f552d99a9a7d5b501e8659152bf"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e623cbc318a7ce677a41b82487f7a1bfdbd14f7b7118b44a527849c79628582f"

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
