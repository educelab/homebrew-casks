cask "landmarks-picker" do
  version "1.2.1"
  sha256 "d6e8b49a05edbea90a9bec89f5402fcf10153ca91b15fcc4c1b1990b42632358"

  url "https://gitlab.com/api/v4/projects/36921165/packages/generic/release/v#{version}/LandmarksPicker-#{version}-Darwin-arm64.zip"
  name "Landmarks Picker"
  desc "EduceLab Landmarks Picker"
  homepage "https://gitlab.com/educelab/landmark-picker"

  depends_on macos: ">= :monterey"
  depends_on arch: [:arm64]

  app "Landmarks Picker.app"

  zap trash: "~/Library/Preferences/com.educelab.Landmarks Picker.plist"
end
