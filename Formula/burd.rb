class Burd < Formula
  desc "Local development environment manager for macOS (CLI)"
  homepage "https://github.com/digitalnodecom/burd"
  version "1.13.1"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-aarch64"
      sha256 "d715eef1aa81aac163c51bd1c7e8b421aec04f81d4aefe7778d562073c10e223"
    end
    on_intel do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-x64"
      sha256 "e695ef4fa3196e065c2d5970405dfc290c57ea9534839214bbbfb899e6eaab26"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "burd-darwin-aarch64" => "burd"
    else
      bin.install "burd-darwin-x64" => "burd"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/burd --version")
  end
end
