cask "dayapp" do
  version "0.3.2"
  sha256 "eaf3a7b41b9404290d28053178335c6cacb5eb213519748ef854d00daffb8c57"

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
