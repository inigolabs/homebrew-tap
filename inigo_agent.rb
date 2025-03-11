# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "1.1.1"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/1.1.1/agent_darwin_all.tar.gz"
    sha256 "9b1d0c00e33f322d7d5c0cb98ae377a1d9437ec7529c8021c46bec87f302e5d0"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/1.1.1/agent_linux_amd64.tar.gz"
      sha256 "27d39ad9432d33c60d894c92309b9e290ad0e2c8e9020389ce4828b148a03620"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/1.1.1/agent_linux_arm64.tar.gz"
      sha256 "80eb3a84a2bdfe9eb8a240c8e32af54dc7211e9f2670ce52cb995945b5af7b92"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
