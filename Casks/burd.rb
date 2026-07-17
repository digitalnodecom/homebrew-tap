cask "burd" do
  version "1.9.1"

  on_arm do
    sha256 "078e59069122096d39f644cd07c8817fd426d0b8c3c06ada70c74514e461f50e"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cc5a3ed04b478bcbf1d3ce5daa6a203a7a3a9eb8d276af0153b47956b32658a6"

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
