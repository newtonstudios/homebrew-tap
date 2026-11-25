cask "convert" do
  version "0.4.0"
  sha256 "a6ca8b45fa5411e8234fc91422f47004adb172e5fbbbefce47a48d2d92125811"

  url "https://github.com/newtonstudios/convert/releases/download/v#{version}/Convert.zip"
  name "Convert"
  desc "Right-click file converter for audio, video, images, documents and fonts"
  homepage "https://github.com/newtonstudios/convert"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Convert.app"

  zap trash: [
    "~/Library/Preferences/local.convert.app.plist",
    "~/Library/Services/Convert.workflow",
  ]

  caveats <<~EOS
    Audio, video and WebP need ffmpeg and cwebp:
      brew install ffmpeg webp

    Convert isn't notarized. The first time you open it, macOS asks you to confirm in
    System Settings → Privacy & Security → Open Anyway.

    To add Convert to Finder's right-click menu, open Convert and click Install.
  EOS
end
