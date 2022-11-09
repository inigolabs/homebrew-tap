# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "0.16.0"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.16.0/agent_macos_all.tar.gz"
    sha256 "59f8ad7a38e84b929bbf9c2eca7289653fc1db7f6bea074d39425edceb661a2e"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.16.0/agent_linux_arm64.tar.gz"
      sha256 "46c7731c398b0d89eb68f9306ab3ef9ac5af4b0f8f63494dcb2bb2d6f5f83087"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.16.0/agent_linux_x86_64.tar.gz"
      sha256 "f6e000e6a7d12343ce9a022dd36be2b58cbbf02497d954e12934f240aa4001dd"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
