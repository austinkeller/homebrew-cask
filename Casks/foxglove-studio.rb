cask "foxglove-studio" do
  version "1.48.0"
  sha256 "037aee8959878102b50d2e80c365d1f23724c95734e2bf3b6d4f08bec652e85e"

  url "https://github.com/foxglove/studio/releases/download/v#{version}/foxglove-studio-#{version}-mac-universal.dmg",
      verified: "github.com/foxglove/studio/"
  name "Foxglove Studio"
  desc "Visualization and debugging tool for robotics"
  homepage "https://foxglove.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Foxglove Studio.app"

  zap trash: [
    "~/Library/Application Scripts/dev.foxglove.studio.quicklook",
    "~/Library/Application Support/Foxglove Studio",
    "~/Library/Caches/dev.foxglove.studio",
    "~/Library/Caches/dev.foxglove.studio.ShipIt",
    "~/Library/Containers/dev.foxglove.studio.quicklook",
    "~/Library/Preferences/dev.foxglove.studio.plist",
    "~/Library/Saved Application State/dev.foxglove.studio.savedState",
  ]
end
