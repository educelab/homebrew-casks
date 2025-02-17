cask "volume-cartographer" do
  arch arm:   "arm64",
       intel: "x86_64"

  version "2.27.0"
  sha256 arm:   "6d4dea1aa21e145f2e1fc36f59d279151e028238d00449c63603197651b6c8db",
         intel: "b8f9e270a306cbcf6327468356be913ff50d3ac70e31ac5b0157a0f750bb7419"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :monterey"
  end

  url_name = on_arch_conditional arm: "VC-#{version}-Darwin.zip", intel: "VC-#{version}-Darwin-macOS12.zip"
  url "https://github.com/educelab/volume-cartographer/releases/download/v#{version}/#{url_name}"
  name "Volume Cartographer"
  desc "Virtual unwrapping toolkit"
  homepage "https://github.com/educelab/volume-cartographer"

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
