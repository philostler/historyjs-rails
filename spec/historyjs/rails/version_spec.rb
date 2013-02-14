require "spec_helper"

describe Historyjs::Rails do
  it { Historyjs::Rails::VERSION.should == "1.0.1" }
  it { Historyjs::Rails::HISTORYJS_VERSION.should == "1.7.1" }
end
