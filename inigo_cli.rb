# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.19.0"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.19.0/cli_macos_all.tar.gz"
    sha256 "9abb7cd5d9528c6d0249f88f3e8c6c44f701f4a0a372ef1138eea63266c37f15"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.19.0/cli_linux_arm64.tar.gz"
      sha256 "20ec8d431ab50aa877b1dcaa854a4374aff5066298841d8b677ebe068473be96"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.19.0/cli_linux_amd64.tar.gz"
      sha256 "780dffbc9ee80cc1e695f4e6ac6956d73ae1a001a99cc59e49dc67166dd4a5f5"

      def install
        bin.install "inigo"
      end
    end
  end
end
