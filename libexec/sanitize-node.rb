#!/usr/bin/ruby

class Hash
  alias hkeys keys

  def keys
    hkeys.sort {|a,b| a.to_s <=> b.to_s }
  end

  def each
    keys.each { |k| yield k, self[k] }
  end
end

require 'rubygems'
require 'bundler/setup'
require 'json'
require 'yaml'

node = JSON.load(File.read(ARGV[0]).gsub("json_class","json_klass")).to_hash

node.delete "all_resources"
node.delete "updated_resources"
node.delete "elapsed_time"
node.delete "start_time"
node.delete "end_time"
node["node"].delete "automatic"


puts node.to_yaml
