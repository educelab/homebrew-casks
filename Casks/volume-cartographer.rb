cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.25.0"
  sha256 arm:   "cce92c19b2e5a340fb9fc9776d3463869ce029131d231a050b2f09c0550bb526",
         intel: "e9d69a192e894dbc8da744a3fa157c36e8957eeb546da620261f2676b82241bb"

  url "https://github.com/educelab/volume-cartographer/releases/download/v#{version}/VC-#{version}-Darwin-#{arch}.zip"
  name "Volume Cartographer"
  desc "Virtual unwrapping toolkit"
  homepage "https://github.com/educelab/volume-cartographer"

  depends_on macos: ">= :monterey"
  depends_on arch: [:intel, :arm64]

  app "VC.app"
  binary "CannySegment.app/Contents/MacOS/CannySegment", target: "vc_canny_segment"
  binary "MeshProject.app/Contents/MacOS/MeshProject", target: "vc_projection"
  binary "bin/vc_area"
  binary "bin/vc_convert_pointset"
  binary "bin/vc_layers_from_ppm"
  binary "bin/vc_packager"
  binary "bin/vc_render_from_ppm"
  binary "bin/vc_transform_mesh"
  binary "bin/vc_volpkg_explorer"
  binary "bin/vc_flatten_mesh"
  binary "bin/vc_merge_pointset"
  binary "bin/vc_retexture_mesh"
  binary "bin/vc_transform_uv"
  binary "bin/vc_volpkg_upgrade"
  binary "bin/vc_color_map"
  binary "bin/vc_layers"
  binary "bin/vc_mesher"
  binary "bin/vc_render"
  binary "bin/vc_segment"
  binary "bin/vc_visualize_graph"
  binary "bin/vc_visualize_ppm"
  binary "bin/vc_repair_pointsets"

  zap trash: [
    "~/Library/Preferences/com.educelab.VC.plist",
  ]
end
