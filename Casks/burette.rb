# frozen_string_literal: true

cask "burette" do
  version "2.0.0"
  sha256 "23aeb8a170666abf3129f6d3ee476376b295a5d2d1c8cfc714d51131af7935f4"

  url "https://github.com/SergeiNikolenko/Burette/releases/download/v#{version}/Burette-#{version}.zip"
  name "Burette"
  desc "Finder-native molecular structure previews"
  homepage "https://github.com/SergeiNikolenko/Burette"

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
