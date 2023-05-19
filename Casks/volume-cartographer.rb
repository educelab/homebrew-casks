cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.25.0-rc.2"
  sha256 arm:   "b6e74db794d835b7a71cd1643d9a37654bccdbd524e31b9be2b333990f8b0db2",
         intel: "84bebc350acef9277131bfe097f53ae050770ed43ea6451a9e097cc01d1e8a9d"

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
