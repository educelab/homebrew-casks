cask "landmarks-picker" do
  version "1.2.2"
  sha256 "5d0c63e657ea503761fbc98ddaddaf7cca96fe839c156dbc0cf20af950082069"

  url "https://gitlab.com/api/v4/projects/36921165/packages/generic/release/v#{version}/LandmarksPicker-#{version}-Darwin-arm64.zip"
  name "Landmarks Picker"
  desc "EduceLab Landmarks Picker"
  homepage "https://gitlab.com/educelab/landmark-picker"

  depends_on macos: ">= :monterey"
  depends_on arch: [:arm64]

  app "Landmarks Picker.app"

  zap trash: "~/Library/Preferences/com.educelab.Landmarks Picker.plist"
end
