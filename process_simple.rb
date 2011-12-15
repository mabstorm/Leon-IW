#!/usr/bin/ruby


%w{rubygems xmlsimple pp}.each {|x| require x}

def get_xml(file)
  XmlSimple.xml_in(file)
end

def simple_xml(files)
  files.each do |file|
    xml = get_xml(file)
    xml.each_pair do |k,v|
      v.each do |item|
        item["keys"].each {|thing| puts thing.values}
      end
    end

  end
end


#main
if __FILE__ ==$0
  #simple_xml(ARGV)
  xml = get_xml('./smalladv.xml')
  pp xml
end



