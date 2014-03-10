guard :shell do
  # Compile JS files
  watch %r{src/js/(.+)} do |m|
    system "cd src && rake build:js"
  end
end

# Compile CSS
guard :shell do
  watch %r{src/sass/(.+)} do |m|
    system "cd src && rake build:css"
  end
end

# Copy fonts
guard :shell do
  watch %r{src/fonts/(.+)} do |m|
    system "cd src && rake build:fonts"
  end
end

# Copy images
guard :shell do
  watch %r{src/img/(.+)} do |m|
    system "cd src && rake build:img"
  end

  watch %r{src/config\.rb} do |m|
    system "cd src && rake build"
  end
end

# Use livereload to automatically refresh the browser
# guard 'livereload' do
#  watch %r{resources/(.+)}
#  watch %r{(.*)\.php$}
#  watch %r{(.*)\.html$}
# end
