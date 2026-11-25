# Newton Studios Homebrew tap

## Convert

```bash
brew tap newtonstudios/tap
brew trust newtonstudios/tap
brew install --cask newtonstudios/tap/convert
```

Homebrew only loads casks from taps you've trusted, hence the second line. For audio, video and WebP, also run `brew install ffmpeg webp`.

[Convert](https://github.com/newtonstudios/convert) isn't notarized, so the first time you open it macOS asks you to confirm in **System Settings → Privacy & Security → Open Anyway**.

The cask follows Convert's releases on its own: a workflow checks for a new release once a day and updates the version and checksum.
