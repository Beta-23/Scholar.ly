class StudentDonor < ActiveRecord::Base
  belongs_to :student
  belongs_to :donor
end
