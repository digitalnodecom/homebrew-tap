class Burd < Formula
  desc "Local development environment manager for macOS (CLI)"
  homepage "https://github.com/digitalnodecom/burd"
  version "1.9.2"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-aarch64"
      sha256 "2394fcba74eb2eda3bc560c25f1ba73227300c0856f3c91c0909ea6973a8b910"
    end
    on_intel do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-x64"
      sha256 "b14cb79d8ae83ed9794c74fc8c8c97a517725f95f94dc9875963945441a1ff93"
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
