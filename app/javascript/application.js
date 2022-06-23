// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
// import "./controllers"

import "@shoelace-style/shoelace/dist/components/button/button.js"
// This is the import for the icon component
import "@shoelace-style/shoelace/dist/components/icon/icon.js"
import '@shoelace-style/shoelace/dist/components/format-number/format-number.js';
import '@shoelace-style/shoelace/dist/components/input/input.js';
import '@shoelace-style/shoelace/dist/components/dialog/dialog.js';
// This is the routing and importing of the icons themselves
import { setBasePath } from "@shoelace-style/shoelace/dist/utilities/base-path.js"
setBasePath("/shoelace-assets")
