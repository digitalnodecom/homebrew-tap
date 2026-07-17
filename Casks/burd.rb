cask "burd" do
  version "1.8.2"

  on_arm do
    sha256 "72079b40d0995db59f4f6c814e2cbd0cca6c3405f9c6a1ecee8d842b79b11868"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "11c09929d37751d7519102a9d7a447a6916a7429f5030cdb0856f91d1e627bb4"

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
