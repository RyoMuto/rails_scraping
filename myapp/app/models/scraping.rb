require 'mechanize'

class Scraping < ApplicationRecord

  def self.scrape
    agent = Mechanize.new
    page = agent.get("https://rank1-media.com/item/I-PA000000000005872766") 
    # elements = page.search('a img') 
    # elements = page.search('//*[@id="part1"]/div/a/img')
    elements = page.search('//ul[@class="clearfix"]/li/a/img')
    # elements.each do |element|
    #   woman = Woman.new
    #   # woman.image = element.inner_text
    #   woman.image = element.css('img').attribute('src').value
    #   woman.save
    # endq
    puts elements
  end
end


