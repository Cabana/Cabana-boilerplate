# Build script

# the name of the compiled css file is just the name of the .scss file
@js_build_filename = 'app.js'

@css_build_dir   = '../resources/css'
@js_build_dir    = '../resources/js'
@img_build_dir   = '../resources/img'
@fonts_build_dir = '../resources/fonts'

@export_dir   = '/Users/davidpedersen/Desktop/export'

@js_components = [
  "js/modernizr.js",
  "js/jquery.js",
  "js/foundation/foundation.js",
  "js/foundation/foundation.alerts.js",
  "js/foundation/foundation.clearing.js",
  "js/foundation/foundation.cookie.js",
  "js/foundation/foundation.dropdown.js",
  "js/foundation/foundation.forms.js",
  "js/foundation/foundation.interchange.js",
  "js/foundation/foundation.joyride.js",
  "js/foundation/foundation.magellan.js",
  "js/foundation/foundation.orbit.js",
  "js/foundation/foundation.placeholder.js",
  "js/foundation/foundation.reveal.js",
  "js/foundation/foundation.section.js",
  "js/foundation/foundation.tooltips.js",
  "js/foundation/foundation.topbar.js",
  "js/init.js"
]

@js_compression_level = 'SIMPLE_OPTIMIZATIONS'

# only for build:for_deploy task
@replacements = {}

after 'build:for_deploy' do
  # run code after build:for_deploy task
  # or any other task for that matter
end
