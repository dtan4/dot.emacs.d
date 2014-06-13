#
# Cookbook Name:: emacs
# Recipe:: default
#
# Copyright 2014, dtan4
#
# All rights reserved - Do Not Redistribute
#

apt_repository "emacs24" do
  uri "http://ppa.launchpad.net/cassou/emacs/ubuntu"
  distribution node["lsb"]["codename"]
  components ["main"]
  action :add
end

%w(emacs24 emacs24-el texinfo).each do |pkg|
  package pkg do
    action :install
  end
end
