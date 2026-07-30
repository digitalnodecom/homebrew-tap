cask "burd" do
  version "1.10.2"

  on_arm do
    sha256 "9728cf6fc7e6ef71c427284d091721cdae555df1493447c340dcc54977450b89"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "cb3b9548bba19aa45ee5bff259b25fc0c4b87e140120fa453828e40e39184ab6"

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
