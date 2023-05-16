cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.25.0-rc.1"
  sha256 arm:   "bb034d611a416db8c942edadc2e0b0e6afd5739b5847d82bb1479f631f751532",
         intel: "4d59c8ec615fe67f0ddc89c573ace421e514d158b6febc6b5d7118269140740a"

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

  zap trash: [
    "~/Library/Preferences/com.educelab.VC.plist",
  ]
end
