# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Revgen < Formula
  desc "Only run go:generate when code changes"
  homepage "https://github.com/inigolabs/revgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inigolabs/revgen/releases/download/v0.3.0/revgen_Darwin_arm64.tar.gz"
      sha256 "e82060509a96cd22b0d015938f90bc41bea394003d62a29a9eff0bf187ee56ac"

      def install
        bin.install "revgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/revgen/releases/download/v0.3.0/revgen_Darwin_x86_64.tar.gz"
      sha256 "2c7e71e041457688e007789995348288a96d233ceec7eb4ba2d309622af79ac5"

      def install
        bin.install "revgen"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/revgen/releases/download/v0.3.0/revgen_Linux_arm64.tar.gz"
      sha256 "5895e2a3102adacbe5f9fc13e5c6b5f64d68159bc3b8ccd74987491889861967"

      def install
        bin.install "revgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/revgen/releases/download/v0.3.0/revgen_Linux_x86_64.tar.gz"
      sha256 "a39309c3c6dd6c8f01e0d77925ab05dee064d2b5ef8698971187d11028382281"

      def install
        bin.install "revgen"
      end
    end
  end
end
