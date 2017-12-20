require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.get_all_prices_as_floats.each do |price|
      expect(price).to be < 10
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.get_all_food_items.each do |i|
      if i.element_children[0].text == 'Full Breakfast'
        expect(i.element_children[3].text.to_i).to be > 1000
      else
        expect(i.element_children[3].text.to_i).to be < 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.get_all_food_items.each do |i|
      if i.element_children[0].text.include? 'Waffles'
        expect(i.element_children[2].text).to include 'Two'
      end
    end
  end

end

# require 'spec_helper'
#
# describe "XML menu" do
#
#   before(:all) do
#     @xml_menu = GuiseppesMenu.new
#   end
#
#   it "no price should be more than £10" do
#     # @xml_menu.menu.each do |x|
#     #   expect(x.price_chkr_float).to be <= 10
#     # end
#     # This is no way near right
#     @xml_menu.price_chkr_float.each do |price|
#       expect(price).to be < 10
#     end
#   end
#
#   it "should have no item with calories over 1000 except for the full breakfast" do
#     # Consider children element methods - Remember to step through the data and print out to the command line if you need it
#     # expect(@xml_menu.calorie_chkr?).to be <= 1000
#   end
#
#   it "should have all waffle dishes stating you get two waffles" do
#     # Consider children element methods - Remember to step through the data and print out to the command line if you need it
#   end
#
# end
