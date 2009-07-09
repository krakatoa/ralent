require 'rubygems'

require 'hpricot'
require 'open-uri'

module Ralent
  def self.download(song)
    search_html_url = "http://www.goear.com/search.php?q=" + song.gsub(" ", "+") #ARGV.join("+")
    
    search_html = Hpricot(open(search_html_url))
    first_url = search_html.search("//a[@class='escuchar']").first.raw_attributes["href"]
    goear_id = first_url.match(/.+\/(.+)\/.+/)[1]
    
    goear_xml_url = "http://www.goear.com/files/sst/secm#{goear_id}.xml"
    goear_xml = Hpricot(open(goear_xml_url))
    
    goear_mp3_url = goear_xml.at('song').raw_attributes["path"]

    #system("curl --range 100000-300000 #{goear_mp3_url} >> #{goear_id}_demo.mp3")
    system("curl #{goear_mp3_url} >> #{ENV['PWD']}/public/#{goear_id}.mp3")
    #system("curl --range 0-500000 #{goear_mp3_url} >> #{ENV['PWD']}/public/#{goear_id}.mp3")
    
    #system("#{ENV['PWD']}/lib/stretch.sh #{ENV['PWD']}/public/#{goear_id}.mp3 #{ENV['PWD']}/public/#{goear_id}.wav 0.70")

    #system("twolame #{ENV['PWD']}/public/#{goear_id}.wav #{ENV['PWD']}/public/#{goear_id}.mp3")

    return goear_id
  end

  def self.stretch(song)
  end
end
