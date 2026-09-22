cask "dayapp" do
  version "0.3.0"
  sha256 "7dee68342178234922aa83a58d03e1e84aaef9f98435e8730d755f1cdc809716"

  url "https://github.com/faraz-35/dayapp/releases/download/v#{version}/DayApp_#{version}_aarch64.dmg"
  name "DayApp"
  desc "Live today list with auto-journaling"
  homepage "https://getdayapp.vercel.app"

  livecheck do
    url "https://github.com/faraz-35/dayapp/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "DayApp.app"
end
