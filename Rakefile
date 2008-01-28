# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/nettica.rb'

Hoe.new('nettica', Nettica::VERSION) do |p|
  p.rubyforge_name = 'nettica'
  p.author = 'Matt Conway'
  p.email = 'wr0ngway@yahoo.com'
  p.summary = 'A ruby client for managing nettica bulk-dns entries using the Nettica SOAP API'
  # p.description = p.paragraphs_of('README.txt', 2..5).join("\n\n")
  # p.url = p.paragraphs_of('README.txt', 0).first.split(/\n/)[1..-1]
  p.changes = p.paragraphs_of('History.txt', 0..1).join("\n\n")
  p.extra_deps << ['soap4r']
  p.remote_rdoc_dir = '' # Release to root
end

# vim: syntax=Ruby
