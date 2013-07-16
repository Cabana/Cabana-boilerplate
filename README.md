# Cabana Boilerplate

This is our very neat boilerplate for creating awesome websites.

## How to get setup
If you already have all dependencies setup and configured the simply run `git clone https://github.com/Cabana/Cabana-boilerplate.git` from the command line to get started.

However if you don't follow these steps.

### 1. Git
If you're on Windows you can either use the [GitHub GUI app for windows](http://git-scm.com/downloads/guis) or look at the [git webite](http://git-scm.com/) for how to install the binary.

If you're on a Mac we suggest you install [Homebrew](http://mxcl.github.io/homebrew/) and then install git with `brew install git`.

### 2. Ruby
If you're Windows go to [rubyinstall.org](http://rubyinstaller.org/) and follow the steps there.

If you're on a Mac you will need to install rvm. A good guide can be found [here](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/).

You should be on Ruby version 2.0.0 or later when you're done.

### 2.1. Ruby (Windows only)
For guard to work, devkit needs to be installed. Download at: http://rubyinstaller.org/downloads/. Docs at: https://github.com/oneclick/rubyinstaller/wiki/development-kit

### 3. Clone down the boilerplate
Then Git and Ruby have been setup you should be able to clone down the repo with `git clone https://github.com/Cabana/Cabana-boilerplate.git`.

### 4. Install gem dependencies
Make sure [bundler](http://gembundler.com/) is installed with `gem install bundler`. Then from within the root of the project run `bundle install` to install gem dependencies.

## How to use
### Build script
The build script itself it written using a Ruby gem called [Rake](http://rake.rubyforge.org/). Rake is a task runner kind of thing. It can run tasks (comprised of just Ruby code) and those tasks can have dependencies. Those tasks can then be run from the command line.

When you wanna use the build script from the command line you have to be standing in the src folder or any of its subfolders. Otherwise the Rakefile can't be found.

To list all of the build scripts tasks run `rake --tasks`. This will show you a list of all the tasks including how to call them from the command line and a small description of that they do.

`rake build` is setup as the default task, which means that simply running `rake` is the same as running `rake build`.

Here is a list of the tasks and what they do

- `build` will run `build:css`, `build:js` , `build:fonts` and `build:img`.
- `build:css` will compile SCSS into CSS.
- `build:fonts` will copy over the fonts.
- `build:img` will copy over the images.
- `build:js` will concatenate and minify javascript, and compile coffeescript.
- `build:for_deploy` will run `build`, `compress_img`, `replace_paths`, and `remove:console.log`
- `compress_img` will compress images in src/js
- `export` will run `build:for_deploy` and export the project to a folder.
- `remove:console.log` will remove `console.log` statments from the compiled js file.
- `replace_paths` will replace paths as specified in config.rb.

### Guard
"[Guard](https://github.com/guard/guard) is a command line tool to easily handle events on file system modifications."

When guard is running it will watch the src folder for changes and generate a new build when you change something. So for example when you change something in the sass folder it will recompile it using the build script.

If you're using LiveReload, guard will also reload you browser.

To start guard run `guard` from the root of the project.

### The config file
The build script can be configured in the config.rb file. Descriptions for the individual settings can be found in the sections below.

### JavaScript
To build the JavaScript run `rake build:js`.

This will concatenate and minify your required JavaScript files and compile CoffeeScript files.

Since the order in which JavaScript file are concatenated is important you will send a setting for this in the config.rb file. The setting is called `@js_components` and it is an array filepaths to the JavaScript files you wanna use.

`@js_components` should could look something like this.

```ruby
@js_components = [
  "js/modernizr.js",
  "js/jquery.js",
  "js/foundation/foundation.js",
  "js/foundation/foundation.clearing.js",
  "js/foundation/foundation.interchange.js",
  "js/some-file.coffee",
  "js/init.js"
]
```

The path specified is relative to the src folder.

The build script will use this and make sure your files are concatenated in this order.

### CSS
The build the CSS run `rake build:css`.

This will tell compass to compile the files inside the sass folder. The settings for compass can be found in config.rb

Any file who's name starts with an underscore is a partial and therefore wont be compiled into a CSS file.

### Replacing paths
Sometimes its nessecary to edit the paths to some asset after a build. This could be if the production setup uses a super deep folder structure that you don't wish to mirror while developing.

To fix that edit the paths.json file.

This file should look something like this

```javascript
@replacements = {
  "../../resources/css/www_kongress_dk/app.css" => [
    { replace: "../img", with: "../../img/www_kongress_dk" },
    { replace: "../fonts", with: "../../fonts/www_kongress_dk" }
  ]
}
```

There is a rake task for doing this (its `rake replace_paths`) but you shouldn't need to explicitly call it. It will be called after having built JavaScript or CSS.

### Getting ready for deployment
If you're getting ready to move to production it might be a good idea to build the resources using `rake build:for_deploy`. This will not only build the resources but it will also remove things like `console.log()` and `alert()` statements from the JavaScript, which are normally only required during development.

### Exporting
The build script makes it possible to export the project to another location. This would typically be somewhere on the I drive so its viewable via kunder.cabana.dk.

To export the project edit `@export_dir` in config.rb and run `rake export`. That should do it!

If you have any PHP files in your project the script will do some magic and compile them into html files.
