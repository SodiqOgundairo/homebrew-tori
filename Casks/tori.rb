cask "tori" do
  version "1.6.6"

  on_arm do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-arm64.zip"
    sha256 "a9810b6557316b98787e8029b81207a7e416459da321cbdcd55c75af90792557"
  end

  on_intel do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-x64.zip"
    sha256 "0c80ec9f1f906de5ed9acf11ec453f4e423680d80ea9cb6ec8f3ceec0f12beca"
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
