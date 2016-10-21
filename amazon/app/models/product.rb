class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  { case_sensitive: false, message: "must be unique"}
  # exclusion: in: { %w(apple microsoft sony), message: "%{value} is reserved."}
  validates :price, presence: true
  # uniqueness: {scope: :title}, numericality: {greater_than: 0}
  # validates :description, presence: true, length: {minimum: 10}
  validates :sale_price, presence: true,
  :numericality => {:less_than_or_equal_to => :price}
  validates :hit_count, numericality: {greater_than_or_equal_to: 0}

  # Add a custom methods called `search` to the product model to search for a product with its title or description if it contains a specific word. For instance you should be able to do:
  #
  # Product.search("car")
  #
  # Which should return all the products that have the word car in it's title or description (case insensitive).
  #
  # [Challenge]: Show the products that contain the searched word in their title before the ones that contain the searched word only in the description. For instance, if a product contains the word `car` in its title, it should before a product that only contains the word `car` only in the description.


  def self.search(keyword)
    where(["title ILIKE ? OR description ILIKE ?", "%#{keyword}%", "%#{keyword}%"])
    # Product.where(["title ILIKE ?", "%car%"] || ["description ILIKE ?", "%car%"] )
    # Question.where([“title ILIKE ?”, “%a%”])
    # order + case when
  end

  def self.searchStretch(keyword)
    where(["title ILIKE ?", "%#{keyword}%"]) + where(["description ILIKE ?", "%#{keyword}%"] )
  end

  def on_sale?
    sale_price < price
  end

  # def increment
  #   increment(:hit_count, by = 1)
  # end


  after_initialize :set_defaults
  before_validation :stub_sale_price
  # before_save :titleize_title

  private

  def stub_sale_price
    self.sale_price ||= self.price
  end


  def set_defaults #if you wanna set something in ruby , you have instance variables @viewcount - something , or the other option , if you have attr accessor , you can self.viewcount , that value to something
    #if you wanna set the value of a
    # self.price ||= 1

    self.hit_count ||= 0
  end

  # def titleize_title
  #   self.title.capitalize!
  #   #  = title.titleize if title.present?
  # end
end
