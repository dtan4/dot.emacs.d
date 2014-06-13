require "serverspec"
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Exec

%w(emacs24 emacs24-el texinfo).each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end
