class Tmust < Formula
  desc "A minimal tmux session manager that integrates with zoxide."
  homepage "https://github.com/ochcaroline/tmust"
  url "https://github.com/ochcaroline/tmust.git", tag: "v0.3.1"
  
  version "0.3.1"

  license "YOLO"

  head "https://github.com/ochcaroline/tmust.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags:)
  end
end
