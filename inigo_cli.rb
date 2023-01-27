# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigo.io"
  version "0.19.1"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.19.1/cli_macos_all.tar.gz"
    sha256 "465534749aff3e148d8e036fde4940b77c8d0ca5934cb77e670a6cde6c015e0a"

    def install
      bin.install "inigo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.19.1/cli_linux_arm64.tar.gz"
      sha256 "11b6473e0346e848cb7fb5ac5050d23c9bcc887b8ac59ac5d78cb222c6421c24"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.19.1/cli_linux_amd64.tar.gz"
      sha256 "08b6b14c6a9e777e0bf655786c386569f47da374b13f4457ed3df301cd03ea49"

      def install
        bin.install "inigo"
      end
    end
  end
end
