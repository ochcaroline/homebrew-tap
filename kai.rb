class Kai < Formula
  desc "kAI - agent-ready local kanban board (web UI + JSON API)"
  homepage "https://github.com/ochcaroline/kAI"
  url "https://github.com/ochcaroline/kAI.git", tag: "v0.1.0"

  version "0.1.0"

  license "YOLO"

  head "https://github.com/ochcaroline/kAI.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags:)
  end

  service do
    run [opt_bin/"kai"]
    keep_alive true
    log_path var/"log/kai.log"
    error_log_path var/"log/kai.log"
  end

  def caveats
    <<~EOS
      Board: ~/.kai/board.json, UI and API on http://127.0.0.1:7777

      Claude Code skill (/todo):
        mkdir -p ~/.claude/skills/todo && kai skill > ~/.claude/skills/todo/SKILL.md
    EOS
  end
end
