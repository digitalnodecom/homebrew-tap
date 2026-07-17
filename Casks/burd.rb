cask "burd" do
  version "1.8.1"

  on_arm do
    sha256 "06922724d8897173c5cb9edece07fc566d7f6680f5ecaf6d8e1bc7a27f94f395"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b4b8eacd1ae15592b7f2e41ad8df35c72f4ab30e1c0f0526863a6c167443e3d6"

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
