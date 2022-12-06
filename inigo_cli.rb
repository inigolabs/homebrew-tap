# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.17.1"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.17.1/cli_macos_all.tar.gz"
    sha256 "6309ef8a5001b9afbcc393fd39a91151465d40e3c7c3ac5bb3f23ba5e7616872"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.17.1/cli_linux_arm64.tar.gz"
      sha256 "26bae3950e1976a80d0fdf1b8f73b0a80c774fedd804410253deebf532cfe645"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.17.1/cli_linux_x86_64.tar.gz"
      sha256 "c784a765916d656ca110178973ec505cd4377fa7fa80318f4fa11b4d33d599e5"

      def install
        bin.install "inigo"
      end
    end
  end
end
