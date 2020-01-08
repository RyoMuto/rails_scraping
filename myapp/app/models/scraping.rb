require 'mechanize'

class Scraping < ApplicationRecord

  def self.scrape
    agent = Mechanize.new                  #agentは任意の変数
    page = agent.get("https://rank1-media.com/item/I-PA000000000005872766")  #pageは任意の変数 getの引数はサイトのURL
    # elements = page.search('a img') #div.idxcol aは取得したい要素  elementsは任意の変数
    # elements = page.search('//*[@id="part1"]/div/a/img') #div.idxcol aは取得したい要素  elementsは任意の変数
    elements = page.search('//ul[@class="clearfix"]/li/a/img') #div.idxcol aは取得したい要素  elementsは任意の変数
    # elements.each do |element|
    #   woman = Woman.new                      #Fishは任意のクラス、fishは任意のインスタンス
    #   # woman.image = element.inner_text
    #   woman.image = element.css('img').attribute('src').value
    #   woman.save
    # end
    puts elements
  end
  # //*[@id="post_pickup"]/div[3]/ul/li[2]/a/img
end


