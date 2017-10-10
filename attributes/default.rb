#
# Cookbook Name:: java-osx
# Recipe:: default
#

default[:java][:osx_dmg][:app_name]    = "JDK 7 Update 09"
default[:java][:osx_dmg][:volumes_dir] = "JDK 7 Update 09"
default[:java][:osx_dmg][:package_id]  = "JDK 7 Update 09.pkg"
default[:java][:osx_dmg][:url]         = "http://jayflowers.com/Misc%20Downloads/jdk-7u9-macosx-x64.dmg"
default[:java][:osx_dmg][:dmg_name]    = "jdk-7u9-macosx-x64.dmg"
default[:java][:osx_dmg][:checksum]     = "077fcab1b3e34df8bb40f37f4577b0d6"
default[:java][:osx_dmg][:java_home]   = "/Library/Java/JavaVirtualMachines/jdk1.7.0_09.jdk/Contents/Home"

