# frozen_string_literal: true

cask "burette" do
  version "2026.9.9"
  sha256 "b4c967cbcd6bdd0353247e4150daf780865083fe2228299a9828f34e97d1d61f"

  url "https://github.com/SergeiNikolenko/Burette/releases/download/v#{version}/Burette-#{version}.zip"
  name "Burette"
  desc "Finder-native molecular structure previews"
  homepage "https://github.com/SergeiNikolenko/Burette"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Burette.app"

  zap trash: [
    "~/Library/Application Support/com.local.BuretteV10",
    "~/Library/Application Support/com.local.BurreteV10",
    "~/Library/Caches/com.local.BuretteV10",
    "~/Library/Caches/com.local.BurreteV10",
    "~/Library/Containers/com.local.BuretteV10",
    "~/Library/Containers/com.local.BuretteV10.Preview",
    "~/Library/Containers/com.local.BuretteV10.Thumbnail",
    "~/Library/Containers/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10.Preview",
  ]

  caveats <<~EOS
    Open Burette once after installation so macOS registers the Quick Look extension.
  EOS
end
