cask "volume-cartographer" do
  version "2.28.0"

  on_sonoma :or_newer do
    sha256 "5116628e0cc5486d3e3591fb76085cb8117484f4291eadb2c94c2540d77d76fe"

    url "https://github.com/educelab/volume-cartographer/releases/download/v#{version}/VC-#{version}-Darwin.zip"
  end

  name "Volume Cartographer"
  desc "Virtual unwrapping toolkit"
  homepage "https://github.com/educelab/volume-cartographer"

  depends_on macos: ">= :sonoma"

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

  zap trash: "~/Library/Preferences/com.educelab.VC.plist"
end
