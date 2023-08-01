# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "0.27.1"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.27.1/agent_macos_all.tar.gz"
    sha256 "21db9a910f5d8c62d1ed818d334b72c97c2227fafa65018934d17ca8edafca07"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.27.1/agent_linux_arm64.tar.gz"
      sha256 "921c9d72da1a3d6adc72e9db141f5b3d0e791b03aff5f4922efcae0b2b9fa3d0"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.27.1/agent_linux_amd64.tar.gz"
      sha256 "d177466c8297fb6eac383c34fd0e5368fb3d13510b64afa54e87afc05532df7c"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
