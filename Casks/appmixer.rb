cask "appmixer" do
  version "1.0.0"
  sha256 "0467de81883e774c7c8323257f57b68c0914a0516070d3975de4fc9c289160f8"

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
