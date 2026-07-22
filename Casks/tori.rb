cask "tori" do
  version "1.6.8"

  on_arm do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-arm64.zip"
    sha256 "73832233bf8713079c2112cd1aaa4ae2ffeae17b79052825455d23f0e429ad48"
  end

  on_intel do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-x64.zip"
    sha256 "419e72ad140adb81e2ed48b6abacce30197cbb898afe4f125ea9946d6d72a0dc"
  end

  name "Tori"
  desc "Desktop meeting capture and summarisation app"
  homepage "https://tori-neon.vercel.app"

  livecheck do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/latest"
    strategy :header_match
  end

  app "tori.app"

  zap trash: [
    "~/Library/Application Support/tori",
    "~/Library/Preferences/com.tori.app.plist",
    "~/Library/Logs/tori",
    "~/Library/Caches/tori",
  ]
end
