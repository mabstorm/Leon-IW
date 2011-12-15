#!/usr/bin/ruby

require 'rubygems'
require 'xmlsimple'


def simple_xml(files)
  files.each do |file|

    config = XmlSimple.xml_in(file)
    config.each_pair do |k,v|
      next if v=="3.0"
      v.each do |item|
        item["keys"].each {|thing| puts thing.values}
      end
    end

  end
end


#main
if __FILE__ ==$0
  simple_xml(ARGV)
end



