class Question < ApplicationRecord

  def self.search(keyword)
    where(["title ILIKE ? OR body ILIKE ?", "%#{keyword}%", "%#{keyword}%"])
    # Product.where(["title ILIKE ?", "%car%"] || ["description ILIKE ?", "%car%"] )
    # Question.where([“title ILIKE ?”, “%a%”])
    # order + case when
  end

  def self.searchStretch(keyword)
    where(["title ILIKE ?", "%#{keyword}%"]) + where(["body ILIKE ?", "%#{keyword}%"] )
  end

  # after_initialize :set_defaults
  # before_validation :titleize_title

end
