#!/usr/bin/env ruby

require 'rubygems'
require 'ffi-rzmq'

context = ZMQ::Context.new(1)

puts "Starting Hello World server..."

socket = context.socket(ZMQ::REP)
socket.bind("tcp://*:5555")

while true do
  request = ''
  rc = socket.recv_string(request)

  puts "Received request. Data: #{request.inspect}"

  sleep 1
  socket.send_string("world")
end
