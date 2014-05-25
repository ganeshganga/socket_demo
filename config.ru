require 'rubygems'
require 'rack/websocket'
require 'ap'

path = File.expand_path(File.join(File.dirname(__FILE__), 'app'))
$LOAD_PATH << path

require 'server'

map '/' do
  run Server.new
end

