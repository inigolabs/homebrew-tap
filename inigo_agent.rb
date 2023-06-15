# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "0.26.2"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.26.2/agent_macos_all.tar.gz"
    sha256 "0ca467afe6374363e3deb86fe2adfa5f4b3d540e8aa9512d495640bfc4daaee8"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.26.2/agent_linux_arm64.tar.gz"
      sha256 "62c18c84c36d4f96097ea149a5b394444139c6d00559c36d4383d213a02c1c50"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.26.2/agent_linux_amd64.tar.gz"
      sha256 "a598763417778a0ea88f3b556536581540888fbd21c21fe6bfac434fa77d37a7"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
