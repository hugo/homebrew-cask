cask "whale" do
  version "2.0.0"
  sha256 "d89d7e9c61653eae3bf6d35f391cbe3cfc031c4e5c41b1ec4018a9c6cc4485bc"

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}.dmg"
  appcast "https://github.com/1000ch/whale/releases.atom"
  name "Whale"
  desc "Unofficial Trello app :whale:"
  homepage "https://github.com/1000ch/whale"

  app "Whale.app"

  zap trash: [
    "~/Library/Application Support/Whale",
    "~/Library/Caches/net.1000ch.whale",
    "~/Library/Caches/net.1000ch.whale.ShipIt",
    "~/Library/Preferences/net.1000ch.whale.helper.plist",
    "~/Library/Preferences/net.1000ch.whale.plist",
    "~/Library/Saved Application State/net.1000ch.whale.savedState",
  ]
end
