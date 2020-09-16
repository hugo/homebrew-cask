cask "nova" do
  version "1.0"
  sha256 "c5414f5cf6888a8c53f91b53d5bdd1cd246e31aafad3c3bec381c10ef6a44a94"

  url "https://panic-c157.kxcdn.com/nova/Nova%20#{version}.zip"
  name "Nova"
  desc "A native Mac code editor, from Panic."
  homepage "https://nova.app/"

  auto_updates true

  app "Nova.app"

  zap trash: [
    "/usr/local/bin/nova",
    "~/Library/Application Support/Nova"
  ]
end
