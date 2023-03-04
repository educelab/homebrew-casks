cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.24-rc3"
  sha256 arm:   "4080b135b3e13cb1b26a98090cd58a04f0747b390c8f2b46e30bda599ee5cdb5",
         intel: "71de1d4d9e284e66408d1bf542034047611f0060b4fd4fdc18106d76186bbb2b"

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

  zap trash: [
    "~/Library/Preferences/com.educelab.VC.plist",
  ]
end
