cask "burd" do
  version "1.11.7"

  on_arm do
    sha256 "5b298dc20f78857b808ab1b8450c791870ead20faa7064139bf01d382c5c491f"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "166c9fcf534352fbcaf9380d20049d48448edc150ff2b1f65b9dc8dd76198605"

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
