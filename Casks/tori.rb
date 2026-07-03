cask "tori" do
  version "1.5.1"

  on_arm do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-arm64.zip"
    sha256 "efd5fe1d0ab341ea386526d08be983f3bddf5f6a1ae53e84194c0b3f773e10e3"
  end

  on_intel do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-x64.zip"
    sha256 "574f68539e001515c8485a18e77e7f662f43a107a19453fd041ba37086d98b7b"
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
