# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Revgen < Formula
  desc "Only run go:generate when code changes"
  homepage "https://github.com/inigolabs/revgen"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inigolabs/revgen/releases/download/v0.2.0/revgen_macos_arm64.tar.gz"
      sha256 "1cff3d86e6c97d635895f3d474728970ecac9627982d37bc8b238e699535153b"

      def install
        bin.install "revgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/revgen/releases/download/v0.2.0/revgen_macos_x86_64.tar.gz"
      sha256 "880f48669b03954e84694b65e1cda72cbea19915963464f77ad3727587846ace"

      def install
        bin.install "revgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/revgen/releases/download/v0.2.0/revgen_linux_x86_64.tar.gz"
      sha256 "9deecb5dd4b899e87b81c9bff6c7b510d0defa5bf2732317b30f838019fb34ee"

      def install
        bin.install "revgen"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/revgen/releases/download/v0.2.0/revgen_linux_arm64.tar.gz"
      sha256 "54cd7a138118d86ec0a18691b0daea688cc2bdfbaf7cd7978286aaa6d585bce0"

      def install
        bin.install "revgen"
      end
    end
  end
end
