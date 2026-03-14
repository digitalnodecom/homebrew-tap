class Phpless < Formula
  desc "CLI for the PHPless serverless PHP platform"
  homepage "https://github.com/digitalnodecom/phpless"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-arm64"
      sha256 "2588cf55a4ebdec4c774a7d54d577368c277bbf6dffdc988f183c430cba3e363"
    end
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-amd64"
      sha256 "33cf74010efc5eb566342a4b7950cd3b640baf743ec6638886ce0711b09d39e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-linux-amd64"
      sha256 "cf30bb6a3b2ed7ee1a2773ebc0d5fcc064821b1398f836d02b954a895a725b82"
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
