cask "burd" do
  version "1.13.0"

  on_arm do
    sha256 "988f0f6a3f6d54129f73ab42d58d643639001f72778c1b87b0eb2c1bebb0ed01"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "13734238badc2aa700803a50def8f66bfdabf29fbc2ccee3bf11dcd7e8dab78f"

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
