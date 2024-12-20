# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoGateway < Formula
  desc "Inigo Gateway"
  homepage "https://www.inigo.io"
  version "0.30.15"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.30.15/gateway_darwin_all.tar.gz"
    sha256 "93fca20628e6ed83aa3dd899a5a0b5b2d75f563c9be932eb08675fd27033c1c8"

    def install
      bin.install "inigo_gateway"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.15/gateway_linux_arm64.tar.gz"
      sha256 "15756e3b18658a38b9f286265a2da57c781321cc60117b506f250be4e53bc7e6"

      def install
        bin.install "inigo_gateway"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.30.15/gateway_linux_amd64.tar.gz"
      sha256 "e402244b6c654e3f87bfc3530869135e6b6e1ed9e0b02893613414e14a22f9be"

      def install
        bin.install "inigo_gateway"
      end
    end
  end
end
