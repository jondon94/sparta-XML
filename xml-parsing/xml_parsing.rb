require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  def get_menu_names
    @menu.search('name')
  end

  def xpath_get_names
    # @menu.xpath('/breakfast_menu/food/calories')
    @menu.xpath('//calories')
  end

  def get_menu_items
    @menu.search('food')
  end
end

x = GuiseppesMenu.new
# puts x.xpath_get_names
# puts x.xpath_get_names[2]
# puts x.get_menu_items[0].text
# puts x.get_menu_names
