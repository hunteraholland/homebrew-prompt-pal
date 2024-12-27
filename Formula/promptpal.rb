class Promptpal < Formula
    desc "Short description of what your CLI does"
    homepage "https://github.com/hunteraholland/prompt-pal"
    url "https://github.com/hunteraholland/prompt-pal/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "8916d5598d44a058e9b36e7cbaa7e96e6d4bee3b32c6d78cfc8ec0d4edbda753"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "build", "--release"
      bin.install "target/release/promptpal"
    end
  
    test do
      # Simple test to make sure the binary runs
      assert_match "Usage:", shell_output("#{bin}/prompt-pal --help")
    end
  end
