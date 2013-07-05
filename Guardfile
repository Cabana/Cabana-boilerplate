guard :shell do
  # Compile JS files
  watch %r{src/js/(.+)} do |m|
    if system "cd src && rake build:js"
      `terminal-notifier -message "JavaScripts compiled"` if RUBY_PLATFORM[/darwin/i]
    else
      `terminal-notifier -message "Error compiling JavaScripts"` if RUBY_PLATFORM[/darwin/i]
    end
  end
end

# Compile CSS
guard :shell do
  watch %r{src/sass/(.+)} do |m|
    system "cd src && rake build:css"
  end
end

# Use livereload to automatically refresh the browser
guard 'livereload' do
  watch %r{resources/(.+)}
  watch %r{(.*)\.php$}
  watch %r{(.*)\.html$}
end
