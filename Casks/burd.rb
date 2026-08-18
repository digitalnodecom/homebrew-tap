cask "burd" do
  version "1.11.6"

  on_arm do
    sha256 "4f9250befdf9e4218a7824a20dfa28efc2e5c74b4d16ee721c25ef465ca1d92a"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "1e4dad0cc8fa6674cadaf33ec45cc086c7abaced8f70ae8ff9ff6db97ec6e17a"

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
