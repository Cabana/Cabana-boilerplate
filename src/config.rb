# Build script

# the name of the compiled css file is just the name of the .scss file
@js_build_filename = 'app.js'

# can be multiple dir's
@css_build_dir   = ['../resources/css']
@js_build_dir    = ['../resources/js']
@img_build_dir   = ['../resources/img']
@fonts_build_dir = ['../resources/fonts']

# @export_dir   = '/Users/davidpedersen/Desktop/export'

# --style=expanded
# --style=compressed
# --debug-info
@sass_compile_options = '--style=expanded'

@js_components = [
  
  "bower_components/modernizr/modernizr.js",
  "js/vendor/jquery-1.11.0.min.js",
  "js/vendor/jquery-ui-1.10.3.custom.js",
  "bower_components/fastclick/lib/fastclick.js",
  "bower_components/devbridge-autocomplete/dist/jquery.autocomplete.min.js",
  "bower_components/jquery.cookie/jquery.cookie.js",
  "bower_components/jquery-placeholder/jquery.placeholder.js",
  "bower_components/jquery-validation/dist/jquery.validate.min.js",
  "bower_components/jquery-validation/dist/additional-methods.min.js",
  
  "bower_components/foundation/js/foundation/foundation.js",
  "bower_components/foundation/js/foundation/foundation.abide.js",
  "bower_components/foundation/js/foundation/foundation.accordion.js",
  "bower_components/foundation/js/foundation/foundation.alert.js",
  "bower_components/foundation/js/foundation/foundation.clearing.js",
  "bower_components/foundation/js/foundation/foundation.dropdown.js",
  "bower_components/foundation/js/foundation/foundation.equalizer.js",
  "bower_components/foundation/js/foundation/foundation.interchange.js",
  "bower_components/foundation/js/foundation/foundation.joyride.js",
  "bower_components/foundation/js/foundation/foundation.magellan.js",
  "bower_components/foundation/js/foundation/foundation.offcanvas.js",
  "bower_components/foundation/js/foundation/foundation.orbit.js",
  "bower_components/foundation/js/foundation/foundation.reveal.js",
  "bower_components/foundation/js/foundation/foundation.slider.js",
  "bower_components/foundation/js/foundation/foundation.tab.js",
  "bower_components/foundation/js/foundation/foundation.tooltip.js",
  "bower_components/foundation/js/foundation/foundation.topbar.js",
  
  "js/cabana/cabana.browser.js",
  "js/cabana/cabana.FBComments.js",
  "js/cabana/cabana.youtube.js",
  "js/cabana/cabana.sayt.js",
  "js/cabana/cabana.offcanvas.js",

]

# CONCAT_ONLY
# WHITESPACE_ONLY
# SIMPLE_OPTIMIZATIONS
# ADVANCED_OPTIMIZATIONS
@js_compression_level = 'CONCAT_ONLY'

# only for build:for_deploy task
@replacements = {}

after 'build:for_deploy' do
  # run code after build:for_deploy task
  # or any other task for that matter
end
