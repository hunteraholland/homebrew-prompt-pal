class PromptPal < Formula
    desc "Short description of what your CLI does"
    homepage "https://github.com/hunteraholland/prompt-pal"
    url "https://github.com/hunteraholland/prompt-pal/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "<CALCULATED_SHA256>"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/prompt-pal"
    end
  
    test do
      # Simple test to make sure the binary runs
      assert_match "Usage:", shell_output("#{bin}/prompt-pal --help")
    end
  end
