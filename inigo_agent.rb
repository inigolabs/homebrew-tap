# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "0.21.0"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.21.0/agent_macos_all.tar.gz"
    sha256 "1ce3300b31ccb5b384ab53918c4429b1cab963249c0c7c58c74654aab2752df3"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.21.0/agent_linux_arm64.tar.gz"
      sha256 "a2b04e24b081b5d063c0d9dad3c38670f61f510f1ffe676bb7e6cfa21f400ab8"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.21.0/agent_linux_amd64.tar.gz"
      sha256 "efe031934ad6e35a6c1e316befe7efa3fccf85c59c884ec77328b88045e4138f"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
