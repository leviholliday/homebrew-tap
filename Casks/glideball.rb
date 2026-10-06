cask "glideball" do
  version "2.9"
  sha256 "cb1db483ec3f56beef716daba4197be0ec36b4095f3a9a0d35c39eda9e66e151"

  url "https://github.com/leviholliday/glideball/releases/download/v#{version}/Glideball.zip"
  name "Glideball"
  desc "Make the Kensington Expert Mouse trackball feel amazing"
  homepage "https://glideball.netlify.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Glideball.app"

  uninstall quit: "com.leviholliday.glide"

  zap trash: [
    "~/Library/Application Support/Glide",
    "~/Library/Logs/Glide",
    "~/Library/Preferences/com.leviholliday.glide.plist",
  ]

  caveats <<~EOS
    Glideball isn't notarized by Apple (it's a free app from an independent developer).
    The first time you open it, macOS may block it: open System Settings › Privacy & Security,
    scroll down and click "Open Anyway". Then grant Accessibility and Input Monitoring.

    If you used KensingtonWorks, uninstall it and restart your Mac first.
  EOS
end
