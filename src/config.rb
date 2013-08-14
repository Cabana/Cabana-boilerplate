# Build script

# the name of the compiled css file is just the name of the .scss file
@js_build_filename = 'app.js'

@css_build_dir   = '../resources/css'
@js_build_dir    = '../resources/js'
@img_build_dir   = '../resources/img'
@fonts_build_dir = '../resources/fonts'

@export_dir   = '/Users/davidpedersen/Desktop/export'

@js_components = [
  # "js/vendor/modernizr.js",
  "js/vendor/jquery.js",
  # "js/vendor/foundation/foundation.js",
  # "js/vendor/foundation/foundation.alerts.js",
  # "js/vendor/foundation/foundation.clearing.js",
  # "js/vendor/foundation/foundation.cookie.js",
  # "js/vendor/foundation/foundation.dropdown.js",
  # "js/vendor/foundation/foundation.forms.js",
  # "js/vendor/foundation/foundation.interchange.js",
  # "js/vendor/foundation/foundation.joyride.js",
  # "js/vendor/foundation/foundation.magellan.js",
  # "js/vendor/foundation/foundation.orbit.js",
  # "js/vendor/foundation/foundation.placeholder.js",
  # "js/vendor/foundation/foundation.reveal.js",
  # "js/vendor/foundation/foundation.section.js",
  # "js/vendor/foundation/foundation.tooltips.js",
  # "js/vendor/foundation/foundation.topbar.js",
  "js/init.js"
]

# CONCAT_ONLY
# WHITESPACE_ONLY
# SIMPLE_OPTIMIZATIONS
# ADVANCED_OPTIMIZATIONS
@js_compression_level = 'SIMPLE_OPTIMIZATIONS'

# only for build:for_deploy task
@replacements = {}

after 'build:for_deploy' do
  # run code after build:for_deploy task
  # or any other task for that matter
end
