# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.29.1"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.29.1/cli_darwin_all.tar.gz"
    sha256 "5acf408ca7438345103565fe018128731d4b52c480b839deb757ab34d1ac49c2"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.29.1/cli_linux_arm64.tar.gz"
      sha256 "b5ef6b6150b6581f116249e47adfc114c9cda88324101afba95206cccd152a0d"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.29.1/cli_linux_amd64.tar.gz"
      sha256 "bd4d41b2d78f3e17b03f9770ab456b67b321eb527d1d34bc3574dfee49fe26d1"

      def install
        bin.install "inigo"
      end
    end
  end
end
