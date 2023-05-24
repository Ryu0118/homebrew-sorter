# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sorter < Formula
  desc "Swift CLI tool to reorder enum cases, imports, etc."
  homepage "https://github.com/Ryu0118/Sorter"
  url "https://github.com/Ryu0118/Sorter/releases/download/0.1.1/sorter"
  sha256 "973d161d9429ed9f0388513234f9cfa3dbc17e5f9526bc9e6293dfad13b9a8ab"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method

    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "sorter"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Kusa`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/sorter", "--version"
  end
end
