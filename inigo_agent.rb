# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class InigoAgent < Formula
  desc "Inigo Agent"
  homepage "https://www.inigo.io"
  version "0.18.2"

  on_macos do
    url "https://github.com/inigolabs/artifacts/releases/download/v0.18.2/agent_macos_all.tar.gz"
    sha256 "2865aa4065e714c2e088393e25ff0413856fbe90fa8bc972595bcd3b0161d966"

    def install
      bin.install "inigo_agent"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.18.2/agent_linux_arm64.tar.gz"
      sha256 "731a264fe7235d7a37e507819ea403653d7555e433c03361ab9188e0169b0ee2"

      def install
        bin.install "inigo_agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/inigolabs/artifacts/releases/download/v0.18.2/agent_linux_x86_64.tar.gz"
      sha256 "432eaa06ea8349976e45b951f01333f63af7f18d91ca8f6c8e8ec414d2c83366"

      def install
        bin.install "inigo_agent"
      end
    end
  end
end
