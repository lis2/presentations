#!/usr/bin/env ruby

require 'ffi-rzmq'

context = ZMQ::Context.new
publisher = context.socket ZMQ::PUB
publisher.bind "tcp://*:5563"

loop do
  publisher.send_string 'A', ZMQ::SNDMORE
  publisher.send_string "Message for A"

  publisher.send_string 'B', ZMQ::SNDMORE
  publisher.send_string "Message for B"

  publisher.send_string 'ALL', ZMQ::SNDMORE
  publisher.send_string "Message for ALL"

  sleep 1
end

publisher.close
