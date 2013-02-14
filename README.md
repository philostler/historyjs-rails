# History.js for Rails [![Build Status][travis_ci_build_status]][travis_ci][![Dependency Status][gemnasium_dependency_status]][gemnasium]

Provides History.js (1.7.1) for use with Rails 3 & 4

[RubyGems][ruby_gems] | [Ruby Toolbox][ruby_toolbox] | [GitHub][github] | [Travis CI][travis_ci] | [Gemnasium][gemnasium] | [RubyDoc][ruby_doc]

## Installation
### Rails 3.1+
To use History.js with your Rails 3.1+ application, add the following to your Gemfile

```
gem "historyjs-rails"
``` 
Run ```bundle install``` and History.js will be available for you to use via the asset pipeline. Add one of the following lines (depending on your framework) into your ```app/assets/javascripts/application.js``` file...

```
# HTML4 & 5 support (with hash fallback)
//= require history_jquery    # jQuery 1.3+
//= require history_mootools  # Mootools 1.3+
//= require history_right     # Right.js 2.2+
//= require history_zepto     # Zepto 0.5+
//= require history_native    # For everything else

# HTML5 only support
//= require history_jquery_html5    # jQuery 1.3+
//= require history_mootools_html5  # Mootools 1.3+
//= require history_right_html5     # Right.js 2.2+
//= require history_zepto_html5     # Zepto 0.5+
//= require history_native_html5    # For everything else
```
...or for the minified version in development

```
# HTML4 & 5 support (with hash fallback)
//= require history_jquery.min    # jQuery 1.3+
//= require history_mootools.min  # Mootools 1.3+
//= require history_right.min     # Right.js 2.2+
//= require history_zepto.min     # Zepto 0.5+
//= require history_native.min    # For everything else

# HTML5 only support
//= require history_jquery_html5.min    # jQuery 1.3+
//= require history_mootools_html5.min  # Mootools 1.3+
//= require history_right_html5.min     # Right.js 2.2+
//= require history_zepto_html5.min     # Zepto 0.5+
//= require history_native_html5.min    # For everything else
```
History.js is now installed. Woop!

### Rails 3.0
To use History.js with your Rails 3.0 application, add the following to your Gemfile

```
gem "historyjs-rails"
``` 
Run ```bundle install``` followed by the install generator (with the desired framework option)

```
# HTML4 & 5 support (with hash fallback)
rails generate historyjs:install --jquery    # jQuery 1.3+
rails generate historyjs:install --mootools  # Mootools 1.3+
rails generate historyjs:install --right     # Right.js 2.2+
rails generate historyjs:install --zepto     # Zepto 0.5+
rails generate historyjs:install --native    # For everything else

# HTML5 only support
rails generate historyjs:install --jquery --html5    # jQuery 1.3+
rails generate historyjs:install --mootools --html5  # Mootools 1.3+
rails generate historyjs:install --right --html5     # Right.js 2.2+
rails generate historyjs:install --zepto --html5     # Zepto 0.5+
rails generate historyjs:install --native --html5    # For everything else
```
History.js is now installed. Woop!

##History.js Resources
[GitHub][historyjs_github]

[ruby_gems]: http://rubygems.org/gems/historyjs-rails
[ruby_toolbox]: http://www.ruby-toolbox.com/projects/historyjs-rails
[github]: http://github.com/philostler/historyjs-rails
[travis_ci]: http://travis-ci.org/philostler/historyjs-rails
[travis_ci_build_status]: https://secure.travis-ci.org/philostler/historyjs-rails.png
[gemnasium]: https://gemnasium.com/philostler/historyjs-rails
[gemnasium_dependency_status]: https://gemnasium.com/philostler/historyjs-rails.png
[ruby_doc]: http://rubydoc.info/github/philostler/historyjs-rails/master/frames
[historyjs_github]: http://github.com/balupton/history.js