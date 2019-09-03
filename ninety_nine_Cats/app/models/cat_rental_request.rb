class CatRentalRequest < ApplicationRecord
  STATUSES = ['APPROVED', 'DENIED', 'PENDING']

  validates :status, presence: true, inclusion: { in: STATUSES  }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :cat_id, presence: true
  validate :overlapping_requests

  belongs_to :cat,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :Cat,
  dependent: :destroy


  

  def overlapping_requests
    cat_rentals = Cat.where(id: self.cat_id).includes(:rental_requests)
    cat_rentals = cat_rentals.first.rental_requests
    request = self
    cat_rentals.each do |rental|
      unless request.non_overlapping_requests(rental) 
        raise "This cat is booked these dates"
      end
    end
    true
  end

  def non_overlapping_requests(rental)
    if self.start_date > rental.end_date || rental.start_date > self.end_date
      return true
    end
    false
  end

end