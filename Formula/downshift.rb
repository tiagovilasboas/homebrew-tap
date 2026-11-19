class Downshift < Formula
  desc "Context compaction and policy-aware subagent routing for AI coding agents"
  homepage "https://downshift-ai.vercel.app/"
  url "https://github.com/tiagovilasboas/downshift-ai/archive/refs/tags/v0.19.0.tar.gz"
  sha256 "cb62865f739df2ca30d63ebd024c91a76e189c1e2af5ce376651c59ed1d94fab"
  license "Apache-2.0"
  head "https://github.com/tiagovilasboas/downshift-ai.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.buildVersion=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/downshift"
    generate_completions_from_executable(bin/"downshift", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downshift version")
    assert_match "setup", shell_output("#{bin}/downshift help")
  end
end
