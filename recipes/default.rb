#
# Cookbook Name:: java-osx
# Recipe:: default
#

case node.platform
when 'mac_os_x'
  dmg_package 'JavaOSx-Installer' do
    dmg_name node[:java][:osx_dmg][:dmg_name]
    app node[:java][:osx_dmg][:app_name]
    package_id node[:java][:osx_dmg][:package_id]
    volumes_dir node[:java][:osx_dmg][:volumes_dir]
    source node[:java][:osx_dmg][:url]
    checksum node[:java][:osx_dmg][:checksum]
    type 'pkg'
    action :install
    not_if { File.directory? node[:java][:osx_dmg][:java_home] }
  end

  ENV['JAVA_HOME'] = node[:java][:osx_dmg][:java_home]
  ENV['PATH'] = "#{node[:java][:osx_dmg][:java_home]}/bin:#{ENV['PATH']}"
end
