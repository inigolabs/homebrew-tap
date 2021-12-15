# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigolabs.com"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inigolabs/cli/releases/download/0.1.1/cli_macos_arm64.tar.gz"
      sha256 "5d4c9e41b96deefc010f9e12a80713f19c3e4854debe69b55a12705ca3c2aa5b"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/cli/releases/download/0.1.1/cli_macos_x86_64.tar.gz"
      sha256 "a232bc283b6f88b7e647e26350014c2c66bc98dc0954b7240718a920b91fa02e"

      def install
        bin.install "inigo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/cli/releases/download/0.1.1/cli_linux_arm64.tar.gz"
      sha256 "7e2e19b4bd0a1f777cfeab3feb0f562faa1b4656dcd22399fd4805d16dd66907"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/cli/releases/download/0.1.1/cli_linux_x86_64.tar.gz"
      sha256 "28f8532966a6bf31c0c32e9414808eefcac932441c9bd968e26a98f728d4d51b"

      def install
        bin.install "inigo"
      end
    end
  end
end
