# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.27.0"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.27.0/cli_macos_all.tar.gz"
    sha256 "12a4d5a6e9e2a852c7ac5c7326f0094c88b728532865c2887c8cad506a29de15"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.27.0/cli_linux_arm64.tar.gz"
      sha256 "fa5f53ec34e14b3432da4e70404b5e9188a7ba2062fd5f9a23c4a2a4c181c997"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.27.0/cli_linux_amd64.tar.gz"
      sha256 "c0adb452e6e85aaa44e505a5b07a283994446bdaea3d7778ff626338900beb5a"

      def install
        bin.install "inigo"
      end
    end
  end
end
