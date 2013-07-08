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

Here is list of what the build script will do

- Copy images from src/img to resources/img.
- Copy images from src/fonts to resources/fonts.
- Concatenate and minify the JavaScript and place the results in resources/js/app.js.
- Compile the SCSS into resources/css/app.css.
- Replace paths.
- Remove console.logs and alerts (optionally).

### Guard
"[Guard](https://github.com/guard/guard) is a command line tool to easily handle events on file system modifications."

When guard is running it will watch the src folder for changes and generate a new build when you change something. So for example when you change something in the sass folder it will recompile it using the build script.

If you're using LiveReload, guard will also reload you browser.

To start guard run `guard` from the root of the project.

### JavaScript
To build the JavaScript run `rake build:js`.

This will concatenate and minify your required JavaScript files.

Since the order in which files are concatenated is very important in JavaScript we have a file called components.json inside the js folder. This file specifies which files should be concatenated together and in what order.

The components.json file should look something like this:

```javascript
{
  "jquery": "jquery.js",
  "init": "init.js"
}
```

The name of the component is not significant. The path must be relative to the js folder.

The build script will then read this file and make sure your files are concatenated in this order.

### CSS
The build the CSS run `rake build:css`.

This will tell compass to compile the files inside the sass folder. The settings for compass can be found in config.rb

Any file who's name starts with an underscore is a partial and therefore wont be compiled into a CSS file.

### Replacing paths
Sometimes its nessecary to edit the paths to some asset after a build. This could be if the production setup uses a super deep folder structure that you don't wish to mirror while developing.

To fix that edit the paths.json file.

This file should look something like this

```javascript
{
  "../../resources/css/www_kongress_dk/app.css": [
    { "replace": "../img", "with": "../../img/www_kongress_dk" },
    { "replace": "../fonts", "with": "../../fonts/www_kongress_dk" }
  ]
}
```

In this example we should replace every instance of `foo` with `bar` inside the specified file.

There is a rake task for doing this (its `rake replace_paths`) but you shouldn't need to explicitly call it. It will be called after having built JavaScript or CSS.

### Getting ready for deployment
If you're getting ready to move to production it might be a good idea to build the resources using `rake build:for_deploy`. This will not only build the resources but it will also remove things like `console.log()` and `alert()` statements from the JavaScript, which are normally only required during development.

### Exporting
...
