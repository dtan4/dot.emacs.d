require "serverspec"
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Exec

RSpec.configure do |config|
  config.before :all do
    config.os = backend(Serverspec::Commands::Base).check_os
  end

  config.path = "/sbin:/usr/sbin"
end

%w(emacs24 emacs24-el texinfo).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end
