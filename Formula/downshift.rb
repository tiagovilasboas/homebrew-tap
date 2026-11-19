class Downshift < Formula
  desc "Context compaction and policy-aware subagent routing for AI coding agents"
  homepage "https://downshift-ai.vercel.app/"
  url "https://github.com/tiagovilasboas/downshift-ai/archive/refs/tags/v0.19.0.tar.gz"
  sha256 "baa587eb675da44294a347fd6fcc61a389044cb74a19d4407d9e34530a6b8d92"
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
