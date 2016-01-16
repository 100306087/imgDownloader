class WelcomeController < ApplicationController
  def index
    #@page=MetaInspector.new('https://scontent.cdninstagram.com/hphotos-xpt1/t51.2885-15/s750x750/sh0.08/e35/12446210_884550384996191_1458336669_n.jpg')
    @page=MetaInspector.new('https://www.instagram.com/p/BAm6lb7pPrr/?tagged=andorra')
    puts @page
    #@pageUrl=@page.url
    #pageUrl=@pageUrl
    require 'open-uri'
    download=open(@page.images.best)
    IO.copy_stream(download,'/tmp/downloadTest.jpg')
    
  end
  # def scrape
  # end
end
