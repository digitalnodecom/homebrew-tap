cask "burd" do
  version "1.12.0"

  on_arm do
    sha256 "12b4ad6f10c3f23e8adfcd7fed6e563c32f1a097389e1bb5550c8a1cd6771c3c"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "e5ce6c9f0a700224d0bb079448e08c96cb285bf3aed4c427f2d9c61e85937a2e"

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
