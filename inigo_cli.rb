# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.24.0"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.24.0/cli_macos_all.tar.gz"
    sha256 "c82bf731c398eda8a15883614d0dba342ac35b4369a404aba6f8439649b3de48"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.24.0/cli_linux_arm64.tar.gz"
      sha256 "12af0cfb1c3d23b95214d080ff63b920ec760763be68ab135cc5c69736b808a4"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.24.0/cli_linux_amd64.tar.gz"
      sha256 "8c7f1992bb25a0c53c0e28d6e52bf381095c08092f96fc85ccff86b5a3b4a233"

      def install
        bin.install "inigo"
      end
    end
  end
end
