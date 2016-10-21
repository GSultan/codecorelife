require 'rails_helper'
## use let:product
RSpec.describe Product, type: :model do

  describe 'validations' do

    # - title and price must be present
    # - title is unique
    # - sale_price is set to price by default if not present
    # - sale_price must be less than or equal to price
    # - a method called on_sale? that returns true or false whether the product is on sale or not

    it 'requires a title' do
      #given
        p = FactoryGirl.build :product, title: nil
      #WHEN
        p.valid?
      #THEN
      expect(p.errors).to have_key(:title)
    end

    it 'requires a price' do
      #given
        p = FactoryGirl.build :product, price: nil, sale_price: nil
      #WHEN
        p.valid?
      #THEN
      expect(p.errors).to have_key(:price)
    end
    #
    it 'requires a unique title' do
      #given
        FactoryGirl.create :product, title: "iPhone"
        p = FactoryGirl.build :product, title: "iPhone"
      #WHEN
        p.valid?
      #THEN
      expect(p).to be_invalid
    end
    #
    it 'sets sale_price to price by default if not present' do
      #given
        p = FactoryGirl.build :product, sale_price: nil #change time of defaults setting to before validation , that's what fixed it
        # p = FactoryGirl.build :product, title: "iPhone"
      #WHEN
        p.valid?
      #THEN
      expect(p.sale_price).to eq(p.price)
    end



    #
    # it 'requires a sale_price' do
    #   #given
    #     p = Product.new
    #   #WHEN
    #     p.valid?
    #   #THEN
    #   expect(p.errors).to have_key(:sale_price)
    # end
    #
    it 'has sale price <= price' do
      #given
        p = FactoryGirl.build :product, price: 20, sale_price: 21
      #WHEN
        p.valid?
      #THEN
      expect(p).to be_invalid
    end
    #
    it 'is on sale?' do
      #given
        p = FactoryGirl.build :product, price: 10, sale_price: 10
      #WHEN
        p.valid?
      #THEN
      expect(p.on_sale?).to be false
    end
    #
    #
    #
    #
    #
    #
    #
  end


  # pending "add some examples to (or delete) #{__FILE__}"
end
