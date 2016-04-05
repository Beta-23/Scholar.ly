class Donor < ActiveRecord::Base
  has_secure_password
  has_many :student_donors
  has_many :students, through: :student_donors
end
