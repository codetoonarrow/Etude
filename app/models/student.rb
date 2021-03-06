class Student < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :teachers, through: :lessons
  validates :postal_code, :street_address, :city, presence: true

  def first_name
    User.find(self.user_id).first_name
  end

  def last_name
    User.find(self.user_id).last_name
  end

  def email
    User.find(self.user_id).email
  end

  def full_address
    "#{self.street_address},#{self.postal_code}".gsub!(" ", "+")
  end
end
