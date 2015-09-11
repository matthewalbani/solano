# Copyright (c) 2011, 2012, 2013, 2014 Solano Labs All Rights Reserved
require 'simplecov'
SimpleCov.command_name 'cucumber'
SimpleCov.merge_timeout 3600
SimpleCov.start unless SimpleCov.running

require 'rubygems'
require 'aruba/cucumber'
require 'pickle/parser'

def prepend_path(path)
  path = File.expand_path(File.dirname(__FILE__) + "/../../#{path}")
  ENV['PATH'] = "#{path}#{File::PATH_SEPARATOR}#{ENV['PATH']}"
end

prepend_path('bin')

