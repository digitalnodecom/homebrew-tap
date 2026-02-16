class Phpless < Formula
  desc "CLI for the PHPless serverless PHP platform"
  homepage "https://github.com/digitalnodecom/phpless"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-arm64"
      sha256 "cd923ae2268486c50db827d66e99f5bb69bb1b7bedaecf610d986293c62a333c"
    end
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-amd64"
      sha256 "32a763ae66331bb3479452835c209fa97b7a5a0935241b13205105fe21112c37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-linux-amd64"
      sha256 "9d36d868d67ddabdd80c0eac62cfb09fbd2ca458951b3eaff671e35193651016"
    end
  end

  def install
    if Hardware::CPU.arm? && OS.mac?
      bin.install "phpless-darwin-arm64" => "phpless"
    elsif Hardware::CPU.intel? && OS.mac?
      bin.install "phpless-darwin-amd64" => "phpless"
    elsif Hardware::CPU.intel? && OS.linux?
      bin.install "phpless-linux-amd64" => "phpless"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phpless version")
  end
end
