#!/usr/bin/env ruby

gempaths = %x(gem env gempath).split(":")
gempaths.each do |gempath|
  # lookup bundler-*.gemspec files and delete them
  # this is the only way to completely cleanup default bundler
  # Note: the bundler gemspecs' paths are different for CRuby and JRuby
  Dir.glob(gempath.strip + "/specifications/**/bundler-*.gemspec").each { |p| File.delete(p) }
end

