cask "burd" do
  version "1.14.2"

  on_arm do
    sha256 "a52ea756d0800032b85a4b44c093608da565280f5c11d844adedab5c75a45f7d"

    url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/Burd_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "ce2ff6c5c6186832128e65076b69eaaaca07476fe68e9c83d24a41f9879b6ef7"

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
