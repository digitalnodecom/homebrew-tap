class Phpless < Formula
  desc "CLI for the PHPless serverless PHP platform"
  homepage "https://github.com/digitalnodecom/phpless"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-arm64"
      sha256 "2f08fe8ef6a1b90d1bd7e930444e283e41e848a5e30d9bc3654dfb17d9866db4"
    end
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-darwin-amd64"
      sha256 "7d2045ea8fb15de4d7a43549c8892020644771443ba2c363d084fc1d1ab5e4d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/digitalnodecom/phpless/releases/download/cli/v#{version}/phpless-linux-amd64"
      sha256 "158290c3f00fb708c07c801ab62905f7ad2aa8b0aff2b4a0148a337390d0c8d9"
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
