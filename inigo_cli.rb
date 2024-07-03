# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.30.7"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.30.7/cli_darwin_all.tar.gz"
    sha256 "f1759a8a331703fdcff1877a4356259ad7281217b28438fc1eba715108f4d71f"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.7/cli_linux_arm64.tar.gz"
      sha256 "89a0013ed9383f58a965cdc1648265574d773f805b392dd1407a5c22e78bfe70"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.7/cli_linux_amd64.tar.gz"
      sha256 "35689eacf08d38e579b0fd95ab5647e27c32e6951538e18aa3e29da7b9d590ef"

      def install
        bin.install "inigo"
      end
    end
  end
end
