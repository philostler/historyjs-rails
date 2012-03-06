module Historyjs
  module Rails
    if ::Rails.version < "3.1"
      require "historyjs/rails/railtie"
    else
      require "historyjs/rails/engine"
    end
    require "historyjs/rails/version"
  end
end