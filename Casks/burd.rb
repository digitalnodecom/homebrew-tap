cask "burd" do
  version "1.11.2"

  on_arm do
    sha256 "33bc620df3f40ffc5b577cb35be7b0ba6fe9cab8c446e16ff336aeb944038431"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "01b238379a5e69a81ef5416ff6e17377ad3eeaf082ca32ff048e1666c6638947"

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
