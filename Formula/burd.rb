class Burd < Formula
  desc "Local development environment manager for macOS (CLI)"
  homepage "https://github.com/digitalnodecom/burd"
  version "1.11.3"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-aarch64"
      sha256 "b437625d04ee57728a751a94e06b0d0699f2c5e48caf1c74aa8b76b8e4ccbc1b"
    end
    on_intel do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-x64"
      sha256 "66da755263749b189a78f6e886ed0d3a17ea43b205c323f45900a3bac6748178"
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
