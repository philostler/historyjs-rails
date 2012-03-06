require "rails"

module Historyjs
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "This generator installs History.js (#{Historyjs::Rails::HISTORYJS_VERSION})"
      class_option :jquery, :type => :boolean, :default => false, :desc => "For jQuery 1.3+"
      class_option :mootools, :type => :boolean, :default => false, :desc => "For Mootools 1.3+"
      class_option :right, :type => :boolean, :default => false, :desc => "For Right.js 2.2+"
      class_option :zepto, :type => :boolean, :default => false, :desc => "For Zepto 0.5+"
      class_option :native, :type => :boolean, :default => false, :desc => "For everything else"
      class_option :html5, :type => :boolean, :default => false, :desc => "For HTML5 only support"
      source_root File.expand_path "../../../../../vendor/assets/javascripts", __FILE__

      def copy_historyjs
        say_status "copying", "History.js (#{Historyjs::Rails::HISTORYJS_VERSION})", :green

        copy_file "json2.js",     "public/javascripts/json2.js"
        copy_file "json2.min.js", "public/javascripts/json2.min.js"
        copy_file "history_core.js",     "public/javascripts/history_core.js"
        copy_file "history_core.min.js", "public/javascripts/history_core.min.js"

        unless options.html5?
          copy_file "history_html4.js",     "public/javascripts/history_html4.js"
          copy_file "history_html4.min.js", "public/javascripts/history_html4.min.js"

          if options.jquery?
            copy_file "history_jquery.js",     "public/javascripts/history_jquery.js"
            copy_file "history_jquery.min.js", "public/javascripts/history_jquery.min.js"
          end
          if options.mootools?
            copy_file "history_mootools.js",     "public/javascripts/history_mootools.js"
            copy_file "history_mootools.min.js", "public/javascripts/history_mootools.min.js"
          end
          if options.right?
            copy_file "history_right.js",     "public/javascripts/history_right.js"
            copy_file "history_right.min.js", "public/javascripts/history_right.min.js"
          end
          if options.zepto?
            copy_file "history_zepto.js",     "public/javascripts/history_zepto.js"
            copy_file "history_zepto.min.js", "public/javascripts/history_zepto.min.js"
          end
          if options.native?
            copy_file "history_native.js",     "public/javascripts/history_native.js"
            copy_file "history_native.min.js", "public/javascripts/history_native.min.js"
          end
        else
          if options.jquery?
            copy_file "history_jquery_html5.js",     "public/javascripts/history_jquery_html5.js"
            copy_file "history_jquery_html5.min.js", "public/javascripts/history_jquery_html5.min.js"
          end
          if options.mootools?
            copy_file "history_mootools_html5.js",     "public/javascripts/history_mootools_html5.js"
            copy_file "history_mootools_html5.min.js", "public/javascripts/history_mootools_html5.min.js"
          end
          if options.right?
            copy_file "history_right_html5.js",     "public/javascripts/history_right_html5.js"
            copy_file "history_right_html5.min.js", "public/javascripts/history_right_html5.min.js"
          end
          if options.zepto?
            copy_file "history_zepto_html5.js",     "public/javascripts/history_zepto_html5.js"
            copy_file "history_zepto_html5.min.js", "public/javascripts/history_zepto_html5.min.js"
          end
          if options.native?
            copy_file "history_native_html5.js",     "public/javascripts/history_native_html5.js"
            copy_file "history_native_html5.min.js", "public/javascripts/history_native_html5.min.js"
          end
        end
      end
    end
  end
end if ::Rails.version < 3.1