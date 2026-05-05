class K1s < Formula
  desc "K1s, kubernetes made simple"
  homepage "https://github.com/ochcaroline/k1s"
  url "https://github.com/ochcaroline/k1s.git", tag: "v0.0.3"
  
  version "0.0.3"

  license "YOLO"

  head "https://github.com/ochcaroline/k1s.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags:)
  end
end
