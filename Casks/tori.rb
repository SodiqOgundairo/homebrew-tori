cask "tori" do
  version "1.6.1"

  on_arm do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-arm64.zip"
    sha256 "279a8007f728ad687b91b9c5180c7c98cd51a4a12afa2dbfdcae8e932d46e176"
  end

  on_intel do
    url "https://github.com/SodiqOgundairo/homebrew-tori/releases/download/v#{version}/tori-mac-x64.zip"
    sha256 "50e1b77a588a698a7377ec367a604c989560c2896d0bd54989b192cacc219017"
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
