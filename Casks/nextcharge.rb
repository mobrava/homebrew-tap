cask "nextcharge" do
  version "1.3.2"
  sha256 "9bb937c347f60748e723f2dc8c6e676037746f88108a85fa7703fb2b27ce3f47"

  url "https://github.com/mobrava/NextCharge/releases/download/v#{version}/NextCharge-#{version}.dmg"
  name "NextCharge"
  desc "Subscription tracker showing next charge dates and monthly totals"
  homepage "https://github.com/mobrava/NextCharge"

  depends_on macos: :sonoma

  app "NextCharge.app"

  zap trash: [
    "~/Library/Application Support/NextCharge",
    "~/Library/Preferences/com.mobrava.nextcharge.plist",
  ]
end
