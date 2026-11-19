class Downshift < Formula
  desc "Context compaction and policy-aware subagent routing for AI coding agents"
  homepage "https://downshift-ai.vercel.app/"
  url "https://github.com/tiagovilasboas/downshift-ai/archive/refs/tags/v0.18.1.tar.gz"
  sha256 "69de6e1ab2ee0d2ad4eacd10267983b1a858ccba1f42e5b3778941fb9c35af88"
  license "Apache-2.0"
  head "https://github.com/tiagovilasboas/downshift-ai.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.buildVersion=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/downshift"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downshift version")
    assert_match "setup", shell_output("#{bin}/downshift help")
  end
end
