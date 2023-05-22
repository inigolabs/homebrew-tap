# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.25.4"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.25.4/cli_macos_all.tar.gz"
    sha256 "823ed4149f8efc13743edd4332494b4c1af2e3c9e261ed8e3ba1fba6e6f01e59"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.25.4/cli_linux_arm64.tar.gz"
      sha256 "48b659bf807f58b0a9222ed15008b6ca6381d0811ddf95a25a958bfb504c6496"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.25.4/cli_linux_amd64.tar.gz"
      sha256 "c32eb63d21c889b25f9a6c63dd430f732b6792c96ac4a4be7f922f5748a387c3"

      def install
        bin.install "inigo"
      end
    end
  end
end
