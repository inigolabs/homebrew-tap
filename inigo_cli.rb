# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoCli < Formula
  desc "Inigo CLI"
  homepage "https://www.inigolabs.com"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inigolabs/cli/releases/download/v0.13.0/cli_macos_arm64.tar.gz"
      sha256 "7b6288bd85d0ddc7cf60762b9635ff7bc289b9e7fc3f0dd1533e839f180fd057"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/cli/releases/download/v0.13.0/cli_macos_x86_64.tar.gz"
      sha256 "05dc571ccffd26827936f241d33b8341e71614eaa2eb63903a7b84d031421398"

      def install
        bin.install "inigo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/cli/releases/download/v0.13.0/cli_linux_arm64.tar.gz"
      sha256 "640133e2f02f5c9516658058e2274d78a52205ad30f93fd701ed2523973ba1c7"

      def install
        bin.install "inigo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/cli/releases/download/v0.13.0/cli_linux_x86_64.tar.gz"
      sha256 "83cd1767e24e9e79ee304cd736ecb231f07f55441c076d85f3997dd38ddfd761"

      def install
        bin.install "inigo"
      end
    end
  end
end
