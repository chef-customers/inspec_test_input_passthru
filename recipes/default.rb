#
# Cookbook:: inspec_test_input_passthru
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe 'audit::default'
include_recipe 'chocolatey::default'

remote_directory 'C:/profile_wraps_profile_with_inputs' do
  source 'profile_wraps_profile_with_inputs'
  # owner 'root'
  # group 'root'
  # mode '0755'
  action :create
end

remote_directory 'C:/profile_with_inputs' do
  source 'profile_with_inputs'
  # owner 'root'
  # group 'root'
  # mode '0755'
  action :create
end
