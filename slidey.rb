class Slidey < Formula
  desc "Slides in the terminal. And nothing else"
  homepage "https://github.com/ochcaroline/slidey"
  url "https://github.com/ochcaroline/slidey.git", tag: "v1.0.1"
  
  version "1.0.1"

  license "YOLO"

  head "https://github.com/ochcaroline/slidey.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags:)
  end
end
