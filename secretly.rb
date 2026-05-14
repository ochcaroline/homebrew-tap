class Secretly < Formula
  desc "Secretly - secret management in the terminal"
  homepage "https://github.com/ochcaroline/secretly"
  url "https://github.com/ochcaroline/secretly.git", tag: "v0.0.1"
  
  version "0.0.1"

  license "YOLO"

  head "https://github.com/ochcaroline/secretly.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags:), "cmd/main.go"
  end
end
