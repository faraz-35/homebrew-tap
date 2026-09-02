cask "dayapp" do
  version "0.2.0"
  sha256 "bbcbcbbd7d95b5a74e800a4a3e439d90f161b578767f62454e89a398281cc518"

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
