class Phpless < Formula
  desc "CLI for the PHPless serverless PHP platform"
  homepage "https://github.com/digitalnodecom/phpless"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-arm64"
      sha256 "f21772011a322b36cd98a6aa3b6e26e117a815027b21932624934efba786bff0"
    end
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-amd64"
      sha256 "6d119ca3471e2010b64fab9cec2ac474bc9ba8978a729c2a9b788db5369991bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-linux-amd64"
      sha256 "051ce8ea57851bd72f05852468d2163cdb8f31df24037e76a2a6893a6cb0dccc"
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
