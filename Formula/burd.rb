class Burd < Formula
  desc "Local development environment manager for macOS (CLI)"
  homepage "https://github.com/digitalnodecom/burd"
  version "1.11.8"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-aarch64"
      sha256 "1a7056521850a236e5d4bac6dced307b313ddbc660a2920e762b7a4d4a5e4e3b"
    end
    on_intel do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-x64"
      sha256 "374f56962b992571f82f9ed45913c8cff889235a1196f3aaad0615a886e61df8"
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
