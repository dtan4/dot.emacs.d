#
# Cookbook Name:: dot-emacs
# Recipe:: default
#
# Copyright 2014, dtan4
#
# All rights reserved - Do Not Redistribute
#

package "git" do
  action :install
end

git "/home/#{node["dot-emacs"]["user"]}/dot.emacs.d" do
  repository node["dot-emacs"]["dot-emacs_url"]
  action :sync
  user node["dot-emacs"]["user"]
  group node["dot-emacs"]["group"]
end
