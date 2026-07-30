class Burd < Formula
  desc "Local development environment manager for macOS (CLI)"
  homepage "https://github.com/digitalnodecom/burd"
  version "1.10.2"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-aarch64"
      sha256 "45f78b56f76d91283d6b4a363aaebf84ed1e142342c0c5e8497c4a8ce31e21c3"
    end
    on_intel do
      url "https://github.com/digitalnodecom/burd/releases/download/v#{version}/burd-darwin-x64"
      sha256 "39429d98f4653c3d8c815f5bd76116ecf7fcf8ffe2eca6653e1306ca827a386d"
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
