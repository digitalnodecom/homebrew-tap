cask "burd" do
  version "1.10.1"

  on_arm do
    sha256 "c62d1417d73550cf1aba5ba23e3bae5db7814649e332d3f7cc51a8c10d0c3739"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "7981fd7c11e15b391f7812a0afde761871e1e10dcf782e374347a1c2c6234411"

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
