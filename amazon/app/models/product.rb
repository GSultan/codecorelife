class Product < ApplicationRecord
  validates :title, presence: true, uniqueness: { case_sensitive: false, message: "must be unique"},  :exclusion => {["Apple", "Microsoft", "Sony"]}
  validates :price, { numericality: {greater_than: 0} }
  validates :description, presence: true, length: {minimum: 10}
  validates

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

  after_initialize :set_defaults
  before_validation :titleize_title


  private


  def set_defaults #if you wanna set something in ruby , you have instance variables @viewcount - something , or the other option , if you have attr accessor , you can self.viewcount , that value to something
    #if you wanna set the value of a
    self.price ||= 1
  end

  def titleize_title
    self.title = title.titleize if title.present?
  end
end
