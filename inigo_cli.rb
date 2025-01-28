# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.30.20"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.30.20/cli_darwin_all.tar.gz"
    sha256 "9922a4b7216136a05ef6e74d3ccabccded7b51ca1966f8bec0c34e79195cd46a"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.20/cli_linux_arm64.tar.gz"
      sha256 "6926c9e316b2f803c80f0b74096d3efbd15820edf95537c798de9878df3f4a50"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.20/cli_linux_amd64.tar.gz"
      sha256 "ff67c50b49e264f2fc217db46887278d9c0043705d7307e6670ac8589ba8e2a5"

      def install
        bin.install "inigo"
      end
    end
  end
end
