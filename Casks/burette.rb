# frozen_string_literal: true

cask "burette" do
  version "2.3.18"
  sha256 "2727d7da91d195973afec438217fba6b74f0c3ca41bbfd22f31e9a7db16a78e0"

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
