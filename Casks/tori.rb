cask "tori" do
  version "1.6.4"

  on_arm do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-arm64.zip"
    sha256 "2b8147185ff264902224207fb0eb71bbbc3a08e434cd4804710baf2f0f9da3ba"
  end

  on_intel do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-x64.zip"
    sha256 "b7522b4179a6add2beecbb86bf0a599735e48122e70eda814291b2e25f909633"
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
