cask "propresenter" do
  version "7.2,117571592"
  sha256 "7ca6cfb51d2abd9234ba8eb9cbee099e923ef87d55525399492a9709bdec59d1"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  appcast "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0"
  name "ProPresenter"
  homepage "https://www.renewedvision.com/propresenter.php"

  depends_on macos: ">= :mojave"

  app "ProPresenter.app"

  zap trash: [
    "~/Library/Application Support/RenewedVision/ProPresenter6",
    "~/Library/Caches/KSCrashReports/ProPresenter 6",
    "~/Library/Caches/Sessions/ProPresenter 6",
    "~/Library/Caches/com.renewedvision.ProPresenter6",
    "~/Library/Preferences/com.renewedvision.ProPresenter6.plist",
    "/Library/Application Support/RenewedVision",
    "/Library/Caches/com.renewedvision.ProPresenter6",
    "/Users/Shared/Renewed Vision Media",
  ],
      rmdir: [
        "~/Library/Application Support/RenewedVision",
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/Sessions",
      ]
end
