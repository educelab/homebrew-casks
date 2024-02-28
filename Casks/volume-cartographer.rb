cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.26.0-rc.3"
  sha256 arm:   "c17555c88758076b38608d6c0a2347bc14d2c845406342105b0796974699ec6a",
         intel: "7c62a5766862bc32e8508443a0d107dc3351b602561a03c8cf4af7ee85ad321b"

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
  binary "bin/vc_mesher"
  binary "bin/vc_render"
  binary "bin/vc_segment"
  binary "bin/vc_visualize_graph"
  binary "bin/vc_visualize_ppm"
  binary "bin/vc_repair_pointsets"
  binary "bin/vc_ppm_tool"
  binary "bin/vc_version"

  zap trash: [
    "~/Library/Preferences/com.educelab.VC.plist",
  ]
end
