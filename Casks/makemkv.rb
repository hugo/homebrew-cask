cask "makemkv" do
  version "1.15.2"
  sha256 "841bf2e6bbd13f793a84595aa1bb1bb02861eb4dae848d26cd96fe0ddd53f970"

  url "https://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  appcast "https://www.makemkv.com/download/"
  name "MakeMKV"
  desc "Video format converter (transcoder)"
  homepage "https://www.makemkv.com/"

  app "MakeMKV.app"
  binary "#{appdir}/MakeMKV.app/Contents/MacOS/makemkvcon"

  zap trash: [
    "~/Library/Preferences/com.makemkv.MakeMKV.plist",
    "~/Library/Saved Application State/com.makemkv.MakeMKV.savedState",
  ]
end
