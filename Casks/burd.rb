cask "burd" do
  version "1.9.3"

  on_arm do
    sha256 "4ce99e5e4afc02713d20f6ee721fd6c39e601e858842d754a790486c440f037b"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b84ad865a646ac25effeb67988a8b0f4f623b29880fd6ccd595443ebcb71a244"

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
