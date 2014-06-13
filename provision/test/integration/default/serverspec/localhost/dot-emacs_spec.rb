require "serverspec"
include Serverspec::Helper::DetectOS
include Serverspec::Helper::Exec

package("git") do
  it { should be_installed }
end

file("/home/vagrant/dot.emacs.d") do
  it { should be_directory }
end
