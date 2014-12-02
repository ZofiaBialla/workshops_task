class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates_presence_of :price, :title, :description
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => true

  def average_rating
    if self.reviews.size > 0
   		self.reviews.average(:rating) 
   	else
        "none"
    end
  end

end
