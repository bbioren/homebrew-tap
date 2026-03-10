cask "appmixer" do
  version "1.0.1"
  sha256 "f702ece0563fcffc661819c3b0d9cb47cb71005a2ce1c00f0701911d1039c4e3"

  url "https://github.com/bbioren/AppMixer/releases/download/v#{version}/AppMixer-#{version}.dmg"
  name "AppMixer"
  desc "Per-app volume mixer for macOS"
  homepage "https://github.com/bbioren/AppMixer"

  depends_on macos: ">= :sonoma"

  app "AppMixer.app"

  zap trash: [
    "~/Library/Preferences/com.bbioren.appmixer.plist",
  ]
end
