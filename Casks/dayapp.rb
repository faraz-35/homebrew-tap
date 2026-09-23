cask "dayapp" do
  version "0.3.1"
  sha256 "52f81338c113dbd5cf19eeab0442b781de9761cb8e2f15bdc6afdb225e7cae9e"

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
