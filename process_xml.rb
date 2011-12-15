#!/usr/bin/ruby

require 'rubygems'
require 'rexml/document'



def parse_xml(files)

  files.each do |file|
    fp = File.open(file,'r')
    xml = REXML::Document.new(fp)
    xml.elements.each do |ele|
      puts ele
    end
root.elements["synset"].elements["terms"].elements["term"]
root.elements["synset"].elements["keys"].elements["sk"]

  end

end




# main
if __FILE__ == $0
  parse_xml(ARGV)
end
