class Phpless < Formula
  desc "CLI for the PHPless serverless PHP platform"
  homepage "https://github.com/digitalnodecom/phpless"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-arm64"
      sha256 "e27fbd7cdfba651ed63cbb1f8cd50d6b28cfb0bfb70c720253bc69da11eb3287"
    end
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-amd64"
      sha256 "1591fc43dd10123293bb2b4cad29879d51c2e2fef89915f270a1b98cdcf8a4e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-linux-amd64"
      sha256 "f6785e9722cd9e12fa0921f82757dbd98b72d04e7bcd149f4da8618c9c443168"
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
