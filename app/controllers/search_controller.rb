class SearchController < ApplicationController



  def index
    @p = Product.all
    

  end


  def product

    puts "hey"
    puts params 
    @product = params["anything"]["name"]
    puts @product
    @prod = Product.find_by(title: @product)



    @price_fr = @prod.price
    @price_es = @prod.price_es
    @price_de = @prod.price_de
    @price_it = @prod.price_it

    @asin_code = @prod.asin

    @image = "//ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&MarketPlace=FR&ASIN=#{@asin_code}&ServiceVersion=20070822&ID=AsinImage&WS=1&Format=_SL250_&tag=reckb-21"
    @lien_fr = "https://www.amazon.fr/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    @lien_es = "https://www.amazon.es/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    @lien_de = "https://www.amazon.de/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    @lien_it = "https://www.amazon.it/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
  end

  def countries

  end


end
 