require 'date'

class Cat < ApplicationRecord 
  include ActionView::Helpers::DateHelper

  COLORS = [
    'BLACK', 'WHITE', 'ORANGE', 'BROWN'
  ]


  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: COLORS }
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: %w(M , F),
    message: "%{value} is not a valid sex" }
  validates :description, presence: true 

  has_many :rental_requests,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest

  def age
    b_day = self.birth_date
    time_ago_in_words(b_day)
  end


end 