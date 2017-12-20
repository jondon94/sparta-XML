require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here

  def get_all_prices_as_floats
    # @menu.xpath('//price').text
    price_array = []
    @menu.xpath('//price').each do |price|
      # price.text.split('£')[1].to_f << price_array
      price_array << price.text.gsub('£', '').to_f
    end
    price_array
  end

  def get_all_food_items
    # food_name_array = []
    # calorie_array = []
    # @menu.xpath('//name').each do |name|
    #   if name.text == 'Full Breakfast'
    #     menu.xpath('//calories').each do |calories|
    #       food_name_array << name.text.gsub('','')
    #       food_name_array << calories.text.gsub('','')
    #     end
    #   end
    # end
    # food_name_array
    # i should be cycling through each food item and checking calories
    @menu.search('food')
  end

end

# x = GuiseppesMenu.new
# # p x.get_all_prices_as_floats
# p x.get_all_food_items
